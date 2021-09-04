import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vtrspeedvpn/connectionScreens/connect.dart';
import 'package:vtrspeedvpn/connectionScreens/connected.dart';
import 'package:vtrspeedvpn/customWidget/drawerWidget.dart';
import 'package:vtrspeedvpn/page/country_page.dart';

class ConnectionFailed extends StatefulWidget {
  const ConnectionFailed({Key? key, this.location}) : super(key: key);
  final String? location;

  @override
  _ConnectionFailedState createState() => _ConnectionFailedState();
}

GlobalKey<ScaffoldState> _scaffoldKey4 = GlobalKey<ScaffoldState>();

class _ConnectionFailedState extends State<ConnectionFailed> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey4,
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            width: width * 0.7,
            child: DrwerWidget(),
          ),
        ),
      ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        _scaffoldKey4.currentState!.openDrawer();
                      },
                      icon: Icon(Icons.menu, color: Colors.white, size: 30.0,),),
                  ],
                ),
                Container(
                  width: width,
                  height: height / 2 + height * 0.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                          width: 120,
                          height: 120,
                          child: Image.asset(
                            'assets/connectasset.png',
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 50,
                      ),

                      Container(
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.3),),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  // side: BorderSide(color: Colors.white)
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChooseLocation()));
                            },
                            child: Text(widget.location! , style: TextStyle(fontSize: 22.0 , fontWeight: FontWeight.w600),)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'AnyConnect',
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: width * 0.75,
                        height: height * 0.1,
                        color: Colors.white.withOpacity(0.2),
                        child: Center(
                          child: Text("Server Time Out" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w400, fontSize: 15.0), ),
                        ),
                      ),


                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.3,
                  child: GestureDetector(
                    onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    Connected(location: widget.location,)),
                                (Route<dynamic> route) => false);
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/connectbutton.png'),
                        Text(
                          'Connect',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2),
                        ),
                      ],
                    ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
