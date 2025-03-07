/// Extension on Symbol to extract the readable name
extension SymbolExt on Symbol {
  /// Returns the string name of the symbol without the Symbol("...") wrapper
  String get name => RegExp(r'Symbol\("(.*)"\)').firstMatch(toString())?.group(1) ?? '';
}
