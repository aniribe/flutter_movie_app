import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'config/app.locator.dart';
import 'config/app.router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      home: const HomeView(),
    );
  }
}
