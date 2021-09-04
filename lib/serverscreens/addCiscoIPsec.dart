import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vtrspeedvpn/customWidget/DropDownWidget.dart';
import 'package:vtrspeedvpn/serverscreens/add_L2TP.dart';

import 'addserver.dart';

class AddCiscoIPsec extends StatefulWidget {
  const AddCiscoIPsec({Key? key}) : super(key: key);

  @override
  _AddCiscoIPsecState createState() => _AddCiscoIPsecState();
}

class _AddCiscoIPsecState extends State<AddCiscoIPsec> {
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
            leadingText: 'Group Name',
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
