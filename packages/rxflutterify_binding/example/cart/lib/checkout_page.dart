import 'package:flutter/material.dart';
import 'package:rxflutterify_binding/rx_widgets.dart';

import 'viewmodel.dart';
import 'widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    super.key,
  });

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  late final CartViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = CartViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('[rxflutterify_binding] Checkout'),
      ),
      body: SafeArea(
        child: $ListView.builder(
          $.all,
          padding: const EdgeInsets.all(8),
          itemCount:
              0.bind(#itemCount, viewModel.output.cart.products.map((event) => event.length)),
          itemBuilder: (context, index) {
            final product = viewModel.output.cart.products.value[index];
            final productInCart = viewModel.output.cart.getProductInCart(product)!;
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
                    builder: ((context) => const SizedBox.shrink() as Widget).bind(
                        #builder,
                        productInCart.map((event) => (_) => Quantity(
                            quantity: event,
                            color: Colors.black,
                            decrease: () => viewModel.output.cart.decrease(product),
                            increase: () => viewModel.output.cart.increase(product)))),
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
