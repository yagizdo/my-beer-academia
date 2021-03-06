import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_beer_academia/localizations/codegen_loader.g.dart';

import 'app.dart';
import 'locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // Locator setup
  setup();
  runApp(
    EasyLocalization(
      path: 'lib/localizations',
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
      ],
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('en'),
      child: MyApp(),
    ),
  );
}
