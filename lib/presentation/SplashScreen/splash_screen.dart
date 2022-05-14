import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset("assets/k.png"),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text("LogIn"),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("SignUp"))
            ],
          ),
          const Text(
            "Join KidErra and find your best childcare",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
