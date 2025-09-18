import 'package:clock/clock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appClockProvider = Provider<Clock>((ref) => clock);
