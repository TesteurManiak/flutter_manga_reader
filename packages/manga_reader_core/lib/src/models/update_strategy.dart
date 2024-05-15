import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum UpdateStrategy { alwaysUpdate, onlyFetchOnce }
