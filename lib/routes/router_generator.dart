import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar_web/routes/routes.dart';
import 'package:navigation_bar_web/ui/about_page.dart';
import 'package:navigation_bar_web/ui/contact_page.dart';
import 'package:navigation_bar_web/ui/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case routeAbout:
        return MaterialPageRoute(builder: (_) => AboutPage());
        break;
      case routeContacts:
        return MaterialPageRoute(builder: (_) => ContactPage());
        break;
    }
  }
}
