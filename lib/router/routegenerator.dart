import 'package:base_web/ui/pages/counter_page.dart';
import 'package:base_web/ui/pages/counter_provider_page.dart';
import 'package:base_web/ui/pages/page_404.dart';
import 'package:base_web/ui/views/counter_provider_view.dart';
import 'package:base_web/ui/views/counter_view.dart';
import 'package:base_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/statefull':
        return _fadeRoute(CounterView(), '/statefull');
      // return MaterialPageRoute(
      //     settings: RouteSettings(name: '/statefull'),
      //     builder: (_) => CounterPage());

      case '/provider':
        return _fadeRoute(CounterProviderView(), '/provider');
      // return MaterialPageRoute(
      // settings: RouteSettings(name: '/provider'),
      // builder: (_) => CounterProviderPage());

      default:
        return _fadeRoute(View404(), '404');
      // return MaterialPageRoute(
      //     settings: RouteSettings(name: '/404'), builder: (_) => Page404());
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true));
  }
}
