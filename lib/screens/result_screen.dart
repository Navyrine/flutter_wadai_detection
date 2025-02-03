import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_wadai_detection/models/classification_result.dart';
import 'package:flutter_wadai_detection/widgets/similar_item_list.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key, required this.imagePath});

  final ClassificationResult imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Detection Result')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 374,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 25),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: FileImage(imagePath.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        width: 331,
                        height: 63,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 29, 29, 29),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          imagePath.topClassificationLabel,
                          style: Theme.of(context).textTheme.titleLarge,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Expanded(child: SimilarItemList(result: imagePath)),
          ],
        ),
      ),
    );
  }
}
