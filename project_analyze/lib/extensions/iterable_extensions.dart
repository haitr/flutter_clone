import 'package:collection/collection.dart';

/// Extension on List to return null if the list is empty
extension ListExt<T> on List<T> {
  /// Returns the list itself if not empty, null otherwise
  /// Useful for optional parameters that shouldn't be empty
  List<T>? get nullIfEmpty => isNotEmpty ? this : null;
}

/// Extension on Iterable to check if it contains an element based on a condition
extension IterableContainsExt<T> on Iterable<T> {
  /// Returns true if any element in the iterable satisfies the given predicate
  bool containsIf(bool Function(T e) callback) => firstWhereOrNull(callback) != null;
}
