extension MapExtensions<K, V> on Map<K, V> {
  Map<K2, V2> whereType<K2 extends K, V2 extends V>() {
    return whereKeyType<K2>().whereValueType<V2>();
  }

  Map<K2, V> whereKeyType<K2 extends K>() {
    final newMap = <K2, V>{};
    for (final entry in entries) {
      final key = entry.key;
      if (key is K2) newMap[key] = entry.value;
    }

    return newMap;
  }

  Map<K, V2> whereValueType<V2 extends V>() {
    final newMap = <K, V2>{};
    for (final entry in entries) {
      final value = entry.value;
      if (value is V2) newMap[entry.key] = value;
    }

    return newMap;
  }
}
