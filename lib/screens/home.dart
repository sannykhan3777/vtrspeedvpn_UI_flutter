import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtrspeedvpn/screens/settings.dart';
import 'loginscreen.dart';

const Color pink = Color(0xFFF24E86);
const Color white = Colors.white;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(
              'assets/background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 35.0, sigmaY: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height / 1.7,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to\nvtrspeedvpn',
                      style: TextStyle(color: Colors.white, fontSize: 48),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Text(
                      'The best way to navigate your world and discover\n new interests. Lets get started!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              Button(
                width: width,
                height: height,
                onPress: () {},
                colour: Color(0xFFF24E86),
                text: "SIGN UP NOW",
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Button(
                width: width,
                height: height,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LogInScreen()));
                },
                colour: Color(0xFF2A4755),
                text: "LOGIN",
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Button(
                width: width,
                height: height,
                onPress: () {},
                colour: Color(0xFF8A4EF2),
                text: "MANUAL SETUP",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.width,
    required this.height,
    required this.onPress,
    required this.text,
    required this.colour,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final Color colour;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onPress();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: colour,
      minWidth: width * 0.6,
      height: height * 0.07,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
        ),
      ),
    );
  }
}
