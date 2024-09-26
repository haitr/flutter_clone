import 'dart:math';

import 'package:flutter/material.dart';

import 'model.dart';

class Repository {
  Future<List<Product>> getProducts() {
    final random = Random();
    final colors = [...Colors.primaries, ...Colors.accents];

    // fake simulate api request
    return Future.delayed(const Duration(seconds: 1)).then((_) => List.generate(26, (index) {
          final letter = String.fromCharCode(index + 65);
          final iColor = random.nextInt(colors.length);
          final color = colors[iColor][100]!.value.toRadixString(16).substring(2);
          final color2 = colors[iColor][700]!.value.toRadixString(16).substring(2);

          return Product(
            name: 'Product $letter',
            image: 'https://placehold.co/200/$color/$color2/png?text=$letter',
            price: (random.nextInt(3000) + 100) + random.nextDouble(),
          );
        }));
  }
}
