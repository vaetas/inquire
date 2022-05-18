import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';

mixin LogMixin {
  void log(String message) {
    if (!kReleaseMode) {
      dev.log(message, name: '$runtimeType');
    }
  }
}
