import 'dart:async';

import 'package:enable_ventures_teste/service_locator.dart';
import 'package:enable_ventures_teste/styles/themeData.dart';
import 'package:enable_ventures_teste/url_setup.dart';
import 'package:enable_ventures_teste/views/tela_inicial/tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  runZoned<Future<void>>(
    () async {
      await inicializarApp();
    },
  );
}

Future<void> inicializarApp() async {
  setupLocator(urlSetup: UrlSetup(), environment: Environment.development);

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enable Ventures Teste',
      theme: EVThemeData.get(),
      debugShowCheckedModeBanner: false,
      home: TelaInicialTeste(),
    );
  }
}
