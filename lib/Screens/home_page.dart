import 'package:flutter/material.dart';
import 'package:tune_app/Models/item_model.dart';

import '../Components/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<ItemModel> item = const [
    ItemModel(color: Colors.red, audioPath: 'note1.wav'),
    ItemModel(color: Colors.orange, audioPath: 'note2.wav'),
    ItemModel(color: Colors.yellow, audioPath: 'note3.wav'),
    ItemModel(color: Colors.green, audioPath: 'note4.wav'),
    ItemModel(color: Colors.blue, audioPath: 'note5.wav'),
    ItemModel(color: Colors.indigo, audioPath: 'note6.wav'),
    ItemModel(color: Colors.purple, audioPath: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF123456),
        foregroundColor: Colors.white,
        title: const Text('Tune App',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          ...item.map((e) => Expanded(child: Item(item: e))),
        ],
      ),
    );
  }
}
