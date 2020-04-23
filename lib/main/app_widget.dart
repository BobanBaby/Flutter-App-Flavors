import 'package:app_flavors/main/config_reader.dart';
import 'package:app_flavors/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Provider.of<Color>(context),
      ),
      home: Home(title: ConfigReader.getMessage()),
    );
  }
}
