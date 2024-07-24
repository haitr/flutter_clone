import 'dart:math';

import 'package:flutter/material.dart';

import 'model.dart';

class Repository {
  Future<List<Product>> fetchProducts({required int page, int count = 10}) {
    final random = Random();
    final colors = [...Colors.primaries, ...Colors.accents];

    // fake simulate api request
    return Future.delayed(const Duration(seconds: 1)).then((_) => List.generate(count, (index) {
          final indexInPage = (page - 1) * count + index;
          final letter = String.fromCharCode(indexInPage + 65);
          final iColor = random.nextInt(colors.length);
          final color = colors[iColor][100]!.value.toRadixString(16).substring(2);
          final color2 = colors[iColor][700]!.value.toRadixString(16).substring(2);

          return Product(
            letter,
            name: 'Product $letter',
            image: 'https://placehold.co/200/$color/$color2/png?text=$letter',
            price: (random.nextInt(3000) + 100) + random.nextDouble(),
          );
        }));
  }
}
