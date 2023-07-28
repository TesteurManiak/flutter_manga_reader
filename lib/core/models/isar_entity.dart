import 'package:isar/isar.dart';

abstract class IsarEntity<T extends Object> {
  Id? id;

  T toModel();
}
