import 'dart:io';

class ClassificationResult {
  final File image;
  final String topClassificationLabel;
  final double topClassificationConfidence;
  final List<Map<String, dynamic>> otherClassification;

  const ClassificationResult({
    required this.image,
    required this.topClassificationLabel,
    required this.topClassificationConfidence,
    required this.otherClassification,
  });
}
