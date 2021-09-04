import 'package:flutter/material.dart';
import 'package:vtrspeedvpn/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vpn',
      home: HomeScreen(),
    );
  }
}