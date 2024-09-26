import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  final int quantity;
  final VoidCallback increase;
  final VoidCallback decrease;
  final Color color;

  const Quantity(
      {super.key,
      required this.quantity,
      required this.increase,
      required this.decrease,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: color), borderRadius: BorderRadius.circular(4)),
      height: 30,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: decrease, icon: Icon(Icons.remove, color: color, size: 10)),
          Text('$quantity', style: TextStyle(color: color, fontSize: 16)),
          IconButton(onPressed: increase, icon: Icon(Icons.add, color: color, size: 10)),
        ],
      ),
    );
  }
}
