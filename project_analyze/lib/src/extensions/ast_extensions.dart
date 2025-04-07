import 'package:analyzer/dart/element/type.dart';

extension DartCoreExt on DartType {
  bool get isDartCore =>
      isDartCoreBool ||
      isDartCoreInt ||
      isDartCoreDouble ||
      isDartCoreString ||
      isDartCoreObject ||
      isDartCoreEnum ||
      isDartCoreFunction ||
      isDartCoreIterable ||
      isDartCoreList ||
      isDartCoreMap ||
      isDartCoreNull ||
      isDartCoreNum ||
      isDartCoreRecord ||
      isDartCoreSet ||
      isDartCoreSymbol ||
      isDartCoreType;

  bool get isDartAsync => isDartAsyncFuture || isDartAsyncFutureOr || isDartAsyncStream;
}
