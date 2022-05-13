import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Stack(children: [
                InkWell(
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff70767B).withOpacity(0.8),
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: const Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffF1F1F1),
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      children: const [
                        Positioned(
                          child: Icon(
                            Icons.menu,
                            color: Color(0xff70767B),
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => Scaffold.of(context).openDrawer(),
                ),
              ]),
              const SizedBox(
                width: 23,
              ),
              const Text(
                'Hello again !',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: 23,
              ),
              const SizedBox(
                width: 15,
              ),
              Stack(children: [
                InkWell(
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff70767B).withOpacity(0.8),
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: const Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: const Color(0xffF1F1F1),
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      children: const [
                        Positioned(
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Color(0xff70767B),
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
