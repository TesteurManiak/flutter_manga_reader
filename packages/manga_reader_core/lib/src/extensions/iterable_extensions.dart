extension IterableNullableExtension<T extends Object> on Iterable<T?> {
  Iterable<T> whereNotNull() sync* {
    for (final e in this) {
      if (e != null) yield e;
    }
  }
}
