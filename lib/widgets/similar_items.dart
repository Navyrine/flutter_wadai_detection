import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SimilarItems extends StatelessWidget {
  const SimilarItems({
    super.key,
    required this.itemPercentage,
    required this.itemName,
  });

  final double itemPercentage;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        height: 100,
        width: 374,
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(offset: Offset(0, 4), color: Colors.grey)],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 30,
              lineWidth: 8,
              percent: itemPercentage / 100,
              backgroundColor: Theme.of(context).colorScheme.secondaryFixedDim,
              progressColor:
                  Theme.of(context).colorScheme.onSecondaryFixedVariant,
              center: Text(
                '${itemPercentage.toStringAsFixed(0)}%',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                ),
              ),
            ),
            SizedBox(width: 25),
            Expanded(
              child: Text(
                itemName,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
