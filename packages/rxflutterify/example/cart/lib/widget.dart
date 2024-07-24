import 'package:flutter/material.dart';
import 'package:rxflutterify/wrapper.dart';

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

class $Quantity extends Quantity {
  const $Quantity(
    $ $config, {
    super.key,
    required super.quantity,
    required super.increase,
    required super.decrease,
    required super.color,
  });

  @override
  Widget build(BuildContext context) {
    return Wrapper(
        Argument({
          #quantity: quantity,
          #increase: increase,
          #decrease: decrease,
          #color: color,
        }),
        builder: (args) => Quantity(
              quantity: args(#quantity),
              increase: args(#increase),
              decrease: args(#decrease),
              color: args(#color),
            ));
  }
}
