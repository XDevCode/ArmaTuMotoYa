import 'package:flutter/material.dart';
import 'package:motos_ya/src/view/page/home/home_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final String title = 'Motos Ya';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const HomePage()},
    );
  }
}
