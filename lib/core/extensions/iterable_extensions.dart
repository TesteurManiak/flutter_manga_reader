import 'dart:collection';

extension IterableExtensions<T> on Iterable<T> {
  /// Return a new iterable with the elements of this iterable separated by the
  /// given [separator].
  ///
  /// Example:
  /// ```dart
  /// final list = [1, 2, 3];
  /// final result = list.separatedWith(0);
  /// print(result.toList()); // [1, 0, 2, 0, 3]
  /// ```
  ///
  /// Especially useful to create separated columns or rows in Flutter:
  /// ```dart
  /// final list = <Widget>[Text('Hello'), Text('World')];
  /// Column(
  ///  children: [
  ///     ...list.separatedWith(const SizedBox(height: 10)),
  ///   ],
  /// );
  /// ```
  Iterable<T> separatedWith(T separator) sync* {
    for (int i = 0; i < length; i++) {
      final elem = elementAt(i);
      yield elem;
      if (i < length - 1) {
        yield separator;
      }
    }
  }
}

extension QueueExtensions<T> on Queue<T> {
  T? removeFirstOrNull() {
    if (isEmpty) return null;
    return removeFirst();
  }
}
