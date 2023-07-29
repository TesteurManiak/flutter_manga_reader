extension MapExtensions<K, V> on Map<K, V> {
  /// Creates a new [Map] with all [MapEntry] that have key of type [K2] and
  /// value of type [V2].
  Map<K2, V2> whereType<K2 extends K, V2 extends V>() {
    return Map.fromEntries(entries.whereKeyValueType());
  }

  /// Creates a new [Map] with all [MapEntry] that have key of type [K2].
  Map<K2, V> whereKeyType<K2 extends K>() {
    return Map.fromEntries(entries.whereKeyValueType());
  }

  /// Creates a new [Map] with all [MapEntry] that have value of type [V2].
  Map<K, V2> whereValueType<V2 extends V>() {
    return Map.fromEntries(entries.whereKeyValueType());
  }

  Map<K, V> sort(int Function(MapEntry<K, V> a, MapEntry<K, V> b) compare) {
    final sortedEntries = entries.toList()..sort(compare);
    return Map.fromEntries(sortedEntries);
  }
}

extension MapEntriesExtensions<K, V> on Iterable<MapEntry<K, V>> {
  /// Creates a new lazy [Iterable] with all [MapEntry] that have key of type
  /// [K2] and value of type [V2].
  Iterable<MapEntry<K2, V2>>
      whereKeyValueType<K2 extends K, V2 extends V>() sync* {
    for (final e in this) {
      final key = e.key;
      final value = e.value;

      if (key is K2 && value is V2) yield MapEntry(key, value);
    }
  }
}

extension GroupedMapExtensions<K, V> on Map<K, List<V>> {
  /// Sorts the values of the map using the provided [compare] function.
  Map<K, List<V>> groupSort([int Function(V a, V b)? compare]) {
    final newMap = <K, List<V>>{};

    for (final entry in entries) {
      final key = entry.key;
      final value = entry.value;
      newMap[key] = value..sort(compare);
    }
    return newMap;
  }
}
