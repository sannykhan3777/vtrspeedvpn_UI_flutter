import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vtrspeedvpn/connectionScreens/connect.dart';
import 'package:vtrspeedvpn/connectionScreens/connecting.dart';
import 'package:vtrspeedvpn/customWidget/drawerWidget.dart';
import 'package:vtrspeedvpn/customui/progressindicator.dart';

class Connected extends StatefulWidget {
  const Connected({Key? key ,this.location}) : super(key: key);
  final String? location;


  @override
  _ConnectedState createState() => _ConnectedState();
}



class _ConnectedState extends State<Connected> {
  late GlobalKey<ScaffoldState> _scaffoldKey2;

  void initState() {
    // TODO: implement initState
    super.initState();
    _scaffoldKey2 = GlobalKey<ScaffoldState>();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey2,
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
                        _scaffoldKey2.currentState!.openDrawer();
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
                        height: 250,
                        width: 280,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              right: 70,
                              child: Container(
                                  width: 140,
                                  height: 140,
                                  child: Image.asset(
                                    'assets/connectedasset.png',
                                  )),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                width: 200,
                                height: 230,
                                // color: Colors.red,
                                child: CustomPaint(
                                  foregroundPainter: ProgressIndicatorr(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        right: 0,
                                        child: Container(
                                          width: 90,
                                          height: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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




                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Connect(location: widget.location,)));
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/connectingbutton.png'),
                        Text(
                          'Disconnect',
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
