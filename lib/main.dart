import 'package:flutter/material.dart';
import 'package:navigation_bar_web/app_view.dart';
import 'package:navigation_bar_web/routes/router_generator.dart';
import 'package:navigation_bar_web/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Bar Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Why builder is used: https://stackoverflow.com/questions/49748759/example-for-builder-property-in-materialapp-class-in-flutter
      builder: (_, child) => AppView(
        child: child,
      ),
      // Global key:
      // 1) https://medium.com/flutter-community/navigate-without-context-in-flutter-with-a-navigation-service-e6d76e880c1c
      // 2) https://stackoverflow.com/questions/50303441/flutter-redux-navigator-globalkey-currentstate-returns-null
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
