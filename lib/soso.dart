import 'dart:ui';

import 'package:flutter/material.dart';

class So extends StatefulWidget {
  So({Key? key}) : super(key: key);

  @override
  State<So> createState() => _SoState();
}

class _SoState extends State<So> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text("الدفع عن طريق فورى"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Text("الاجمالى بالجنية"),
          Text("-------------"),
          Text("220"),
          Image.asset("fawr.png"),
          Text("استخدم رقم الكود للدفع فى اى "),
          Text("منفذ يقدم خدمة فورى"),
          Text("o"),
          Text(" سينتهى صلاحية الدفع بعد مرور 3"),
          Text("ساعات"),
          ElevatedButton(
            onPressed: () {},
            child: Text("تأكيد"),
          )
        ]),
      ),
    );
  }
}
