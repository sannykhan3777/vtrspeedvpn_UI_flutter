import 'package:flutter/material.dart';
import 'package:vtrspeedvpn/connectionScreens/connect.dart';
import 'package:vtrspeedvpn/models/country.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<CountryModel> locations = [
    CountryModel(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    CountryModel(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    CountryModel(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    CountryModel(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    CountryModel(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    CountryModel(
        url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    CountryModel(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    CountryModel(
        url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    CountryModel(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    CountryModel(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    CountryModel(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    CountryModel(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    CountryModel(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    CountryModel(
        url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    CountryModel(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    CountryModel(
        url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  void initState() {
    super.initState();
  }
  late String locationss;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Container(
              // width: ,
              padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                  locationss = locations[index].location;


                  setState(() {
                    String locationName = '${locations[index].location}';
                  });
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) =>
                              Connect(location: locationss)),
                          (Route<dynamic> route) => false);
                },
                title: Text(locations[index].location),
                leading: Container(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                          value: false, groupValue: true, onChanged: (vall) {}),
                      CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                      ),
                    ],
                  ),
                ),
                trailing: Container(
                  width: width * 0.23,
                  height: height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("160 ms" ,style: TextStyle(color: Colors.black),),
                      Icon(Icons.info_outline),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}