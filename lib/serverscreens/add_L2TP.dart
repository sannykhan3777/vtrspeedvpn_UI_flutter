import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vtrspeedvpn/customWidget/DropDownWidget.dart';

import 'addserver.dart';

class AddL2TP extends StatefulWidget {
  const AddL2TP({Key? key}) : super(key: key);

  @override
  _AddL2TPState createState() => _AddL2TPState();
}

class _AddL2TPState extends State<AddL2TP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Add Server',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TickIcon(
            onPress: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Protocol Type'),
                DropDownWidget(),
              ],
            ),
          ),
          RowList(
            leadingText: 'Remark',
            trailingText: 'Required',
          ),
          RowList(
            leadingText: 'ServerAddress',
            trailingText: 'Required',
          ),
          RowList(
            leadingText: 'IPSec PSK',
            trailingText: 'Required',
          ),
          RowList(
            leadingText: 'UserName',
            trailingText: 'Required',
          ),
          RowList(
            leadingText: 'Password',
            trailingText: 'Required',
          ),
        ],
      ),
    );
  }
}

class TickIcon extends StatelessWidget {
  final Function onPress;
  const TickIcon({
    Key? key , required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
        onPress();
      },
      icon: Icon(
        Icons.check,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}
