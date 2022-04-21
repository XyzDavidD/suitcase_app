import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suitcase_app/constants.dart';
import 'package:suitcase_app/models/NavBar.dart';
import 'package:suitcase_app/screens/details/components/bottomNavBar.dart';
import 'package:suitcase_app/screens/home/home_screen.dart';

class myDevices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildPreferredSize(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Track your suitcase",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage("assets/images/map.png"),
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 25),
            const Text("Configure your fingerprints",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Row(
              children: const [
                SizedBox(width: 42),
                Text("Actual Fingerprint _______________ David",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                Image(
                    image: AssetImage("assets/images/fpg.png"),
                    width: 30,
                    height: 30)
              ],
            ),
            SizedBox(height: 5),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Add New",
                  style: TextStyle(color: Colors.grey),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(320, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)))),
            SizedBox(height: 25),
            const Text("Check the status of the suitcase",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Row(
              children: const [
                SizedBox(width: 90),
                Text("Batery Level",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                SizedBox(width: 90),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: kTextColor,
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(width: 90),
                Text("Damages",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                SizedBox(width: 109),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: kTextColor,
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(width: 90),
                Text("Tries to unlock",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                SizedBox(width: 72),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: buildContainer(context),
    );
  }

  buildPreferredSize(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Colors.black,
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
                "assets/icons/back.svg",
                color: kTextColor,
              )),
          const SizedBox(width: 340)
        ],
      ),
    );
  }
}
