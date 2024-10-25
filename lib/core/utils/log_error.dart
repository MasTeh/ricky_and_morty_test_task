import 'dart:developer';
import 'package:flutter/foundation.dart';

void logError(Object? e, StackTrace? s, {String? name}) {
  log('', name: name ?? 'ERROR', error: e, stackTrace: s);

  if (kDebugMode) return;

}
