import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtrspeedvpn/connectionScreens/connect.dart';
import 'package:vtrspeedvpn/screens/home.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

bool isSwitched = false;

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: white,
                                size: 35.0,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: height * 0.1,
                                ),
                                MyText(
                                  mytext: 'UserName or UUID',
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'privatevpn.username/uuid',
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                MyText(
                                  mytext: 'PASSWORD',
                                ),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: '*******',
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                        });
                                      },
                                      activeColor: Colors.white,
                                      activeTrackColor: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MyText(
                                      mytext: 'V2RAY/Trojan/VLESS Only',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),

                                /// using navigator to navigate to connect screen

                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Connect(location: "USA",)));
                                  },
                                  color: pink,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minWidth: width * 0.3,
                                  height: height * 0.07,
                                  child: Text(
                                    'LOGIN',
                                    style:
                                        TextStyle(fontSize: 17.0, color: white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 1.0,
                  height: height * 0.04,
                  color: white.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(mytext: 'Dont have an account?'),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: MyText(
                          mytext: 'Order Now',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key, required this.mytext}) : super(key: key);
  final String mytext;

  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
      ),
    );
  }
}
