import 'package:cart/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:rxflutterify/rx_material.dart';
import 'package:rxflutterify/rx_widgets.dart';

import 'viewmodel.dart';
import 'widget.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late final ShopViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = ShopViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('[rxflutterify] Shop'),
      ),
      body: SafeArea(
        child: $GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            childAspectRatio: 1, // Width to height ratio of each item
            crossAxisSpacing: 4, // Spacing between columns
            mainAxisSpacing: 4, // Spacing between rows
          ),
          padding: const EdgeInsets.all(8),
          itemCount: viewModel.output.products.value.length,
          $itemCount: viewModel.output.products.map((event) => event.length),
          itemBuilder: (context, index) {
            final product = viewModel.output.products.value[index];
            final productInCart = viewModel.output.cart.getProductInCart(product)!;
            return Container(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(product.image))),
              child: Stack(
                children: [
                  Positioned(
                    top: 4,
                    right: 4,
                    child: $Builder(
                      builder: (context) => const SizedBox.shrink(),
                      $builder: productInCart.map((event) => (_) => Quantity(
                          quantity: event,
                          color: Colors.black,
                          decrease: () => viewModel.output.cart.decrease(product),
                          increase: () => viewModel.output.cart.increase(product))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(4),
                      width: double.infinity,
                      height: 56,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(product.name,
                              style: const TextStyle(color: Colors.white, fontSize: 16)),
                          Text('\$${product.price.toStringAsFixed(1)}',
                              style: const TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: $Badge(
        label: const SizedBox.shrink(),
        $label: viewModel.output.cart.total.map((event) => Text('$event')),
        child: IconButton.filled(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const CheckoutPage())),
          icon: const Icon(Icons.trolley),
        ),
      ),
    );
  }
}
