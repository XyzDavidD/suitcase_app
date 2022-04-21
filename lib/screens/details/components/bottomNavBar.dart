import 'package:flutter/material.dart';
import 'package:suitcase_app/constants.dart';
import 'package:suitcase_app/screens/myDevices.dart';
import 'package:suitcase_app/screens/home/home_screen.dart';

Container buildContainer(BuildContext context) {
  return Container(
    height: 50,
    width: 20,
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 43, 43, 43), width: 0.5),
      color: Colors.transparent,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25)),
    ),
    child: BottomAppBar(
      elevation: 0.0,
      shape: CircularNotchedRectangle(),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
            color: kTextColor,
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            color: kTextColor,
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            color: kTextColor,
          ),
          IconButton(
            icon: Icon(Icons.ad_units_outlined),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => myDevices()));
            },
            color: kTextColor,
          ),
        ],
      ),
    ),
  );
}
