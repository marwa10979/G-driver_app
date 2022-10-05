import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/from_to.dart';
import 'package:flutter_application_1/logout.dart';
import 'package:flutter_application_1/station.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 8,
          title: Center(
            child: Text("تسجيل دخول السائق", style: TextStyle(fontSize: 24)),
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
           
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'اسم الشركة',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(style:TextStyle(fontSize: 20,color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ادخل اسم المستخدم',
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ادخل كلمة المرور',
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
               
              ),
              TextButton(onPressed: () {}, child: Text("نسيت كلمة المرور")),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => station()));
                },
                child: Text("دخول", style: TextStyle(fontSize: 24)),
              ),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context, MaterialPageRoute(builder: (context) => logout()));
                },
                child: Text("تسجيل سائق جديد", style: TextStyle(fontSize: 24)),
              ),
                   ),
            ],
          ),
        ),
      ),
      
    );

  }
}
