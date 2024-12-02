import 'package:clock/clock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clock.g.dart';

@Riverpod(keepAlive: true)
Clock appClock(Ref ref) => clock;
