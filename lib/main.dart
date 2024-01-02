import 'dart:async';

import 'package:allofine/core/injection/dependency_injection.dart';
import 'package:allofine/presentation/app.dart';
import 'package:flutter/material.dart';

void main() {
  _bootstrap(() => const AlloFineApp());
}

Future<void> _bootstrap(FutureOr<Widget> Function() builder) async {
  await _initServices();
  runApp(await builder());
}

Future<void> _initServices() async {
  await initGetIt();
}
