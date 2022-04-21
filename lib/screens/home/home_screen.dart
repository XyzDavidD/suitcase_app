import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suitcase_app/constants.dart';
import 'package:suitcase_app/models/NavBar.dart';
import 'package:suitcase_app/screens/details/components/bottomNavBar.dart';
import 'package:suitcase_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: buildContainer(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarColor: Colors.white, // Status bar
      // ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      centerTitle: true,

      iconTheme: IconThemeData(color: kTextColor),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: kTextColor,
            )),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
