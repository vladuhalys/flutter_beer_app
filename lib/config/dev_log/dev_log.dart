import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

abstract class DevLog {
  static void logInfo(var msg) {
    if (kDebugMode) {
      developer.log('\x1B[37m${msg.toString()}\x1B[0m');
    }
  }

  /// Green text in log
  static void logSuccess(var msg) {
    if (kDebugMode) {
      developer.log('\x1B[32m${msg.toString()}\x1B[0m');
    }
  }

  /// Yellow text in log
  static void logWarning(var msg) {
    if (kDebugMode) {
      developer.log('\x1B[33m${msg.toString()}\x1B[0m');
    }
  }

  /// Red text in log
  static void logError(var msg) {
    if (kDebugMode) {
      developer.log('\x1B[31m ERROR: ${msg.toString()}\x1B[0m');
    }
  }
}
