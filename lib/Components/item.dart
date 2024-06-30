import 'package:flutter/material.dart';
import 'package:tune_app/Models/item_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => item.playSound(),
      child: Expanded(
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
