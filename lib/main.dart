import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './welcome.dart';
import './modal/notifier.dart';



void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => notify(),
      child:
          MaterialApp(debugShowCheckedModeBanner: false, home: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //takes widget from another class name welcome that we imported
      body: Welcome(),
    );
  }
}
