import 'package:cart/widget.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_widget/riverpod_material.dart';
import 'package:riverpod_widget/wrapper.dart';

import 'checkout_page.dart';
import 'provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Shop'),
      ),
      body: SafeArea(
        child: $GridView.custom(
          $.all,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            childAspectRatio: 1, // Width to height ratio of each item
            crossAxisSpacing: 4, // Spacing between columns
            mainAxisSpacing: 4, // Spacing between rows
          ),
          padding: const EdgeInsets.all(8),
          childrenDelegate: SliverChildBuilderDelegate(
            (_, index) => index == 0
                ? const SizedBox(height: 40, child: Center(child: Text('Loading...')))
                : null,
          ).bind(
              #childrenDelegate,
              (ref) => SliverChildBuilderDelegate((_, index) {
                    const pageSize = 10;
                    final page = index ~/ pageSize + 1;
                    final productList = ref.watch(fetchProductsProvider(page));
                    return productList.when(
                      data: (data) => ProviderScopeBuilder(
                          overrides: [productProvider.overrideWithValue(data[index])],
                          builder: (_, ref, __) => Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(ref.read(productProvider).image)),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 4,
                                      right: 4,
                                      child: $Builder(
                                        $.all,
                                        builder: ((_) => const SizedBox.shrink() as Widget).bind(
                                          #builder,
                                          (_) => (_) => ProviderScopeBuilder(
                                                  overrides: [
                                                    itemInCartProvider.overrideWith((ref) => ref
                                                        .read(cartProvider.notifier)
                                                        .getProductInCart(
                                                            ref.read(productProvider)))
                                                  ],
                                                  builder: (_, __, ___) => $Quantity(
                                                        $.all,
                                                        color: Colors.black,
                                                        quantity: 0.bind(#quantity, (ref) {
                                                          final _ = ref.watch(cartProvider);
                                                          return ref.read(itemInCartProvider)?.$2 ??
                                                              0;
                                                        }),
                                                        increase: () {}.bind(
                                                            #increase,
                                                            (ref) => () {
                                                                  ref
                                                                      .read(cartProvider.notifier)
                                                                      .increase(ref
                                                                          .read(productProvider));
                                                                }),
                                                        decrease: () {}.bind(
                                                            #decrease,
                                                            (ref) => () {
                                                                  ref
                                                                      .read(cartProvider.notifier)
                                                                      .decrease(ref
                                                                          .read(productProvider));
                                                                }),
                                                      )),
                                        ),
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
                                            Text(ref.read(productProvider).name,
                                                style: const TextStyle(
                                                    color: Colors.white, fontSize: 16)),
                                            Text(
                                                '\$${ref.read(productProvider).price.toStringAsFixed(1)}',
                                                style: const TextStyle(
                                                    color: Colors.white, fontSize: 12)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                      error: (err, trace) => const Center(child: Text('err')),
                      loading: () => const Center(child: CircularProgressIndicator()),
                    );
                  })),
        ),
      ),
      floatingActionButton: $Badge(
        $.all,
        label: (null as Widget?).bind(
          #label,
          (ref) => Text(ref.watch(totalItemsProvider).toString()),
        ),
        child: IconButton.filled(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CheckoutPage()),
            );
          },
          icon: const Icon(Icons.trolley),
        ),
      ),
    );
  }
}
