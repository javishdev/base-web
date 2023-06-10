import 'package:base_web/router/routegenerator.dart';
import 'package:base_web/ui/layout/main_laout_paget.dart';
import 'package:base_web/ui/pages/counter_page.dart';
import 'package:base_web/ui/pages/counter_provider_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/statefull',
      // routes: {
      //   '/statefull': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage(),
      // },
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
