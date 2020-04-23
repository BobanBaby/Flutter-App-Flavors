import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_widget.dart';
import 'config_reader.dart';
import 'environment .dart';

Future<void> mainCommon(String env) async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Load the JSON config into memory
  await ConfigReader.initialize(env);

  Color primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.red;
      break;
    case Environment.prod:
      primaryColor = Colors.blue;
      break;
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: MyApp(),
    ),
  );
}
