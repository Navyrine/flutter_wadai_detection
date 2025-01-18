import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageNotifier extends StateNotifier<File?> {
  ImageNotifier() : super(null);

  File? pickedImage;

  Future<File?> pickImage(ImageSource source) async {
    File? tempImage;
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: source,
        imageQuality: 100,
      );

      if (pickedImage == null) {
        return null;
      } else {
        tempImage = File(pickedImage.path);
        tempImage = await cropImage(imageFile: tempImage);
        state = tempImage;
      }
    } catch (error) {
      throw Exception(error);
    }
    return tempImage;
  }

  Future<File?> cropImage({required File imageFile}) async {
    try {
      CroppedFile? croppedImg = await ImageCropper().cropImage(
        sourcePath: imageFile.path,
        compressQuality: 100,
      );

      if (croppedImg == null) {
        return null;
      } else {
        return File(croppedImg.path);
      }
    } catch (error) {
      throw Exception(error.toString());
    }
    return null;
  }
}

final imageProvider = StateNotifierProvider<ImageNotifier, File?>(
  (ref) => ImageNotifier(),
);
