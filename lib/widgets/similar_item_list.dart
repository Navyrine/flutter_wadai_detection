import 'package:flutter/material.dart';
import 'package:flutter_wadai_detection/widgets/similar_items.dart';

class SimilarItemList extends StatelessWidget {
  const SimilarItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:
          (ctx, index) =>
              SimilarItems(itemPercentage: 80, itemName: "Wadai Name"),
      itemCount: 5,
    );
  }
}
