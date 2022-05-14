import 'package:flutter/material.dart';
import 'package:kid_erra/presentation/HomePage/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Response rs= getcurrentstate
  // if(response =)

  bool swittch = true;
  @override
  Widget build(BuildContext context) {
    bool swittch = true;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              )),
        ],
        title:
            const Text('Hello again !', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      drawer: const NavDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            _imagecard('assets/Group3.png'),
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
                _circle2("Blur content"),
                const SizedBox(width: 36),
                _circle2("Parental checks"),
              ],
            ),
            const SizedBox(height: 6),
            const Padding(
              padding: EdgeInsets.only(
                left: 30,
              ),
              child: Text(
                "My Devices",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.tv),
                    title: Text("Smart TV"),
                    trailing: Switch(
                        value: !swittch,
                        onChanged: (value) {
                          setState(() {
                            swittch = value;
                          });
                        }),
                  ),
                  const SizedBox(width: 10),
                  ListTile(
                    leading: Icon(Icons.tablet),
                    title: Text("My tablet"),
                    trailing: Switch(
                        value: swittch,
                        onChanged: (value) {
                          setState(() {
                            swittch = value;
                          });
                        }),
                  ),
                  const SizedBox(width: 10),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("My iphone"),
                    trailing: Switch(
                        value: !swittch,
                        onChanged: (value) {
                          setState(() {
                            swittch = value;
                          });
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _imagecard(String image) {
    return Container(
      height: 210,
      width: 340,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }

  Widget _circle(String title) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
              color: Color(0xff2C95F1), // const Color(0xffF1F1F1),
            ),
            child: IconButton(
              iconSize: 35,
              padding: const EdgeInsets.all(20),
              icon: const Icon(Icons.menu,
                  color: Colors.white //Color(0xff70767B),
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

  Widget _circle2(String title) {
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
                color: Color(0xff2C95F1),
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
