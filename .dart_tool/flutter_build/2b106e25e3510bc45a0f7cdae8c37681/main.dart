// @dart=2.7

import 'dart:ui' as ui;

import 'package:getx_state_management/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
