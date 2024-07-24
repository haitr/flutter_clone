import 'package:collection/collection.dart';
import 'package:riverpod_widget/wrapper.dart';

import 'model.dart';
import 'repository.dart';

typedef CartItem = (Product, int quantity);

final cartProvider = NotifierProvider<CartNotifier, List<CartItem>>(CartNotifier.new);

class CartNotifier extends Notifier<List<CartItem>> {
  @override
  List<CartItem> build() => <CartItem>[];

  CartItem? getProductInCart(Product product) =>
      state.firstWhereOrNull((element) => element.$1.id == product.id);

  void increase(Product product) {
    if (getProductInCart(product) case var item?) {
      final index = state.indexOf(item);
      state = [
        ...state.sublist(0, index),
        (item.$1, item.$2 + 1),
        ...state.sublist(index + 1),
      ];
    } else {
      state = [
        ...state,
        (product, 1),
      ];
    }
  }

  void decrease(Product product) {
    if (getProductInCart(product) case var item?) {
      final index = state.indexOf(item);
      state = [
        ...state.sublist(0, index),
        if (item.$2 > 1) (item.$1, item.$2 - 1),
        ...state.sublist(index + 1),
      ];
    }
  }
}

final fetchProductsProvider =
    FutureProvider.autoDispose.family<List<Product>, int>((ref, args) async {
  final repository = Repository();
  final packages = await repository.fetchProducts(page: args, count: 10);
  return packages;
});

final productProvider = Provider.autoDispose<Product>((ref) => throw 'Unimplemented!');

final itemInCartProvider =
    Provider.autoDispose<CartItem?>((ref) => throw 'Unimplemented!', dependencies: [cartProvider]);

final totalItemsProvider = StateProvider<int>((ref) {
  ref.listen(cartProvider, (previous, next) => ref.controller.state = next.map((e) => e.$2).sum);
  return 0;
});
