import 'package:flutter/material.dart';
import 'package:flutter_wadai_detection/models/classification_result.dart';
import 'package:flutter_wadai_detection/widgets/similar_items.dart';

class SimilarItemList extends StatelessWidget {
  const SimilarItemList({super.key, required this.result});

  final ClassificationResult result;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredClassification =
        result.otherClassification
            .where((item) => item['confidence'] > 0.01)
            .toList();

    return ListView.builder(
      itemCount: filteredClassification.length,
      itemBuilder: (ctx, index) {
        final item = filteredClassification[index];
        final itemPercentage = item['confidence'] * 100;

        return SimilarItems(
          itemPercentage: itemPercentage,
          itemName: item['label'],
        );
      },
    );
  }
}
