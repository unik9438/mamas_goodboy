import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //appBar: appBarMethod(),
        SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200.0, // Example content
            color: Colors.red,
            child: const Center(child: Text('Item 1')),
          ),
          Container(
            height: 200.0, // Example content
            color: Colors.yellow,
            child: const Center(child: Text('Item 1')),
          ),
          Container(
            height: 200.0, // Example content
            color: Colors.green,
            child: const Center(child: Text('Item 1')),
          ),
          Container(
            height: 200.0, // Example content
            color: Colors.blue,
            child: const Center(child: Text('Item 1')),
          ),
          Container(
            height: 200.0, // Example content
            color: Colors.amber,
            child: const Center(child: Text('Item 1')),
          ),
        ],
      ),
    );
  }
}
