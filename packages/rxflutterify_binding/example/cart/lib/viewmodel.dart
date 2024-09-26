import 'dart:math';

import 'package:collection/collection.dart';
import 'package:rxflutterify_binding/rx_widgets.dart';

import 'model.dart';
import 'repository.dart';

final _currentSessionCart = CartModel();

class CartModel {
  final products = <Product>[].react;
  final total = 0.react;

  final _nAdded = <Product, BehaviorSubject<int>>{};

  CartModel();

  void init() {
    // count the total number of products
    Rx.combineLatest(
      _nAdded.values,
      (values) => values.sum,
    ).listen((event) => total.value = event);
    // get list of actual products in cart
    Rx.combineLatest(
        _nAdded.values,
        (values) => values.foldIndexed(<int>[], (index, previousValue, element) {
              if (element > 0) return previousValue..add(index);
              return previousValue;
            })).listen(
      (event) => products.value = event.map((e) => _nAdded.keys.elementAt(e)).toList(),
    );
  }

  BehaviorSubject<int>? getProductInCart(Product product) => _nAdded[product];

  void increase(Product product) {
    if (_nAdded[product] case var cart?) {
      cart.value = cart.value + 1;
    }
  }

  void decrease(Product product) {
    if (_nAdded[product] case var cart?) {
      cart.value = max(0, cart.value - 1);
    }
  }
}

class CartViewModel {
  final output = (cart: _currentSessionCart,);
}

class ShopViewModel {
  final output = (
    products: <Product>[].react,
    cart: _currentSessionCart,
  );

  final _repository = Repository();

  ShopViewModel() {
    output.products.listen((value) {
      // create corresponding number of added product for each product into cart
      _currentSessionCart._nAdded.clear();
      for (var element in value) {
        _currentSessionCart._nAdded[element] = BehaviorSubject.seeded(0);
      }
      output.cart.init();
    });

    // request product list from 'API'
    requestProductList();
  }

  void requestProductList() {
    _repository.getProducts().then((value) => output.products.add(value));
  }
}
