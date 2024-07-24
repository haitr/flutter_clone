import 'package:flutter/material.dart';
import 'package:riverpod_widget/riverpod_widgets.dart';
import 'package:riverpod_widget/wrapper.dart';

import 'provider.dart';
import 'widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    super.key,
  });

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Checkout'),
      ),
      body: SafeArea(
        child: $ListView.builder(
          $.all,
          padding: const EdgeInsets.all(8),
          itemCount: 0.bind(#itemCount, (ref) => ref.watch(cartProvider).length),
          itemBuilder: (context, index) {
            final item = context.providerScope.read(cartProvider)[index];
            final product = item.$1;
            final quantity = item.$2;
            return ListTile(
              leading: Image.network(product.image),
              title: Text(product.name, style: const TextStyle(color: Colors.black, fontSize: 16)),
              subtitle: Text('\$${product.price.toStringAsFixed(1)}',
                  style: const TextStyle(color: Colors.black, fontSize: 12)),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  $Builder(
                    $.all,
                    builder: ((_) => const SizedBox.shrink() as Widget).bind(
                      #builder,
                      (ref) => (_) => Quantity(
                          quantity: quantity,
                          color: Colors.black,
                          decrease: () => ref.read(cartProvider.notifier).decrease(product),
                          increase: () => ref.read(cartProvider.notifier).increase(product)),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
