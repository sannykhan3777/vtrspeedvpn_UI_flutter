import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtrspeedvpn/serverscreens/addAnyConnect.dart';
import 'package:vtrspeedvpn/serverscreens/addCiscoIPsec.dart';
import 'package:vtrspeedvpn/serverscreens/addVLESS.dart';
import 'package:vtrspeedvpn/serverscreens/addVMESS.dart';
import 'package:vtrspeedvpn/serverscreens/addserver.dart';
import 'package:vtrspeedvpn/serverscreens/addTrojan.dart';
import 'package:vtrspeedvpn/serverscreens/add_L2TP.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue = 'AnyConnect';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
      iconSize: 30,
      elevation: 16,
      style: const TextStyle(
        color: Colors.pink,
      ),
      underline: Container(
        height: 2,
        color: Colors.transparent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        switch (newValue) {
          case "WebVPN":
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddServer()));
            break;
          case " L2TP":
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddL2TP()));
            break;
          case "AnyConnect":
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddAnyConnect()));
            break;
          case "Trojan":
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddTrojan()));
            break;
          case "Cisco IPsec":
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddCiscoIPsec()));
            break;
          case "VLESS":
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddVLESS()));
            break;
          case "VMESS":
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddVMESS()));
            break;
        }
      },
      items: <String>[
        'WebVPN',
        'L2TP',
        'AnyConnect',
        'Cisco IPsec',
        'VMESS',
        'Trojan',
        'VLESS',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
