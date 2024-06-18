import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_auto_route/app_widget.dart';

import 'app_initialization.dart';

void main() async {
  await beforeInitialize();
  runApp(ProviderScope(
    child: AppWidget(),
  ));
}
