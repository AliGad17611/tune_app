import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModel {
  final Color color;
  final String audioPath;

  const ItemModel({required this.color, required this.audioPath});
  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(audioPath));
  }
}
