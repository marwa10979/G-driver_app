import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pay_mthd.dart';
import 'package:flutter_application_1/station.dart';

class entrip extends StatefulWidget {
  const entrip({Key? key}) : super(key: key);

  @override
  State<entrip> createState() => _entripState();
}

class _entripState extends State<entrip> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  var x, y, z;
  int counter = 0;
  String? _mydate;

  @override
  TextEditingController _time = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Center(child: Text("تفاصيل الرحلة ")),
        elevation: 8,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("../assets/egbus.png"),
          Text("من:القاهرة-التحرير",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontFamily: 'cursive')),
          Text("الى :الاسكندرية-الموقف",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontFamily: 'cursive')),
          Text("التاريخ:25/9/2022-11:00",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontFamily: 'cursive')),
          Text("الوقت",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontFamily: 'cursive')),

          
          Container(
            color: Color.fromARGB(255, 218, 97, 5),
            width: 70,
            height: 100,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Text(
                "   *** جنية ",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pay_mthd()));
                }),
                child: Text(
                  " ادفع",
                  style: TextStyle(fontSize: 24),
                )),
          ),
          BottomNavigationBar(items: const<BottomNavigationBarItem>
          [BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'الرئيسية', ),
          
          BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'التذاكر'),
          BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'الدفع')
          ]),

        ],
      ),
    );
  }
}
