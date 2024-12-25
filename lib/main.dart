import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/page1.dart';
import 'package:providerdemo/provider/providerdemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Providerdemo(),
      child: MaterialApp(
        home: Page1(),
      ),
    );
  }
}
                      