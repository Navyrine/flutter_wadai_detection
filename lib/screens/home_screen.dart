import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey,
            child: Text(
              'Proxima Nova',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(Icons.camera),
                Text('Camera', style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
          Icon(Icons.access_time_filled),
        ],
      ),
    );
  }
}
