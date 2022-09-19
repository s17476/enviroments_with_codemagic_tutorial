import 'package:enviroments_excercise/app_widget.dart';
import 'package:enviroments_excercise/config_reader.dart';
import 'package:enviroments_excercise/enviroment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;

  switch (env) {
    case Enviroment.dev:
      primaryColor = Colors.blue;
      break;
    case Enviroment.prod:
      primaryColor = Colors.red;
      break;
    default:
      primaryColor = Colors.amber;
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: MyApp(),
    ),
  );
}
