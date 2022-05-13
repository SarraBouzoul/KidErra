import 'package:flutter/material.dart';
import 'package:kid_erra/presentation/HomePage/drawer.dart';
import 'appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppBar(),
            _imagecard(),
            const SizedBox(height: 16),
            const Padding(
                padding: EdgeInsets.only(left: 0, right: 170),
                child: Text(
                  "Control Mode",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _circle("Shutdown"),
                const SizedBox(width: 36),
                _circle("Blur content"),
                const SizedBox(width: 36),
                _circle("Parental checks"),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Text(
                    "My Devices",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "My Devices",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      _gridCard(120, 170),
                      const SizedBox(height: 10),
                      _gridCard(120, 170),
                    ],
                  ),
                  const SizedBox(width: 10),
                  _gridCard(170, 120),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _gridCard(double height, double width) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color(0xff70767B),
        ),
        color: const Color(0xffF1F1F1),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      height: height,
      width: width,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xffF1F1F1),
        child: Row(
          children: const [
            Positioned(
              child: Text(''),
            )
          ],
        ),
      ),
    );
  }

  Widget _imagecard() {
    return Container(
      height: 170,
      width: 280,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Group3.png'), fit: BoxFit.cover)),
    );
  }

  Widget _circle(String title) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xff70767B), width: 1),
              color: const Color(0xffF1F1F1),
            ),
            child: IconButton(
              iconSize: 35,
              padding: const EdgeInsets.all(20),
              icon: const Icon(
                Icons.menu,
                color: Color(0xff70767B),
              ),
              onPressed: () {},
            )),
        const SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
