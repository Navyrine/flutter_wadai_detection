import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_wadai_detection/models/classification_result.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class ImageNotifier extends StateNotifier<ClassificationResult?> {
  ImageNotifier() : super(null);

  Interpreter? interpreter;
  List<String>? labels;

  Future<void> loadModel() async {
    interpreter = await Interpreter.fromAsset('assets/model.tflite');
    labels = await loadLabels();
  }

  Future<List<String>> loadLabels() async {
    final labelData = await rootBundle.loadString('assets/labels.txt');

    return labelData.split('\n').map((e) => e.trim()).toList();
  }

  Future<ClassificationResult?> pickImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: source,
        imageQuality: 100,
      );

      if (pickedImage == null) {
        return null;
      }

      File image = File(pickedImage.path);
      image = await cropImage(imageFile: image) ?? image;

      await classifyImage(image);

      return state;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<File?> cropImage({required File imageFile}) async {
    try {
      CroppedFile? croppedImg = await ImageCropper().cropImage(
        sourcePath: imageFile.path,
        compressQuality: 100,
      );

      return croppedImg != null ? File(croppedImg.path) : null;
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  Future<void> classifyImage(File image) async {
    if (interpreter == null) {
      await loadModel();
    }

    var imageBytes = image.readAsBytesSync();
    img.Image? decodedImage = img.decodeImage(imageBytes);
    img.Image resizedImage = img.copyResize(
      decodedImage!,
      width: 256,
      height: 256,
    );

    var input = List.generate(
      1,
      (index) => List.generate(
        256,
        (i) => List.generate(256, (j) => List.generate(3, (j) => 0.0)),
      ),
    );

    for (int y = 0; y < 256; y++) {
      for (int x = 0; x < 256; x++) {
        var pixel = resizedImage.getPixel(x, y);
        input[0][y][x] = [
          (pixel.r / 255.0),
          (pixel.g / 255.0),
          (pixel.b / 255.0),
        ];
      }
    }

    var output = List.filled(
      1 * labels!.length,
      0.0,
    ).reshape([1, labels!.length]);

    interpreter!.run(input, output);

    List<Map<String, dynamic>> predictions = List.generate(
      labels!.length,
      (index) => {"label": labels![index], "confidence": output[0][index]},
    );

    predictions.sort(
      (a, b) =>
          (b["confidence"] as double).compareTo(a["confidence"] as double),
    );

    state = ClassificationResult(
      image: image,
      topClassificationLabel: predictions.first['label'],
      topClassificationConfidence: predictions.first['confidence'],
      otherClassification: predictions.sublist(1),
    );
  }
}

final imageProvider =
    StateNotifierProvider<ImageNotifier, ClassificationResult?>(
      (ref) => ImageNotifier(),
    );
