import 'package:flutter/material.dart';
import 'package:test_chamba/Vista/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Chamba',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const DashboardPage(),
    );
  }
}
