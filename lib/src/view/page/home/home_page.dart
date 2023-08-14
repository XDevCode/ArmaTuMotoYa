import 'package:flutter/material.dart';

import 'header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: layout);
  }

  Widget layout(context, constraints) {
    return const Scaffold(
      body: Header(),
    );
  }
}
