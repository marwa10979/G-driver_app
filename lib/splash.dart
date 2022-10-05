import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:splashscreen/splashscreen.dart';

class spl_sc extends StatefulWidget {
  spl_sc({Key? key}) : super(key: key);

  @override
  State<spl_sc> createState() => _spl_scState();
}

class _spl_scState extends State<spl_sc> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: login(),
      loadingText: Text("Loading......."),
      image: Image.asset(
        "bus_splash.jpg",
      ),
      photoSize: 200,
    );
  }
}
