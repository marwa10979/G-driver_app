import 'package:flutter/material.dart';
import 'package:flutter_application_1/from_to.dart';

class logout extends StatefulWidget {
  logout({Key? key}) : super(key: key);

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          elevation: 8,
          title: Center(
            child: Text(" حساب جديد", style: TextStyle(fontSize: 24)),
          )),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:'الاسم',
                    )),
              ),
                          Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:'رقم التليفون',
                    )),
              ),
                         Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:'كلمه المرور',
                    )),
              ),
                         Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:'تأكيد كلمة المرور',
                    )),
              ),   
                     ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => trip()));
                },
                child: Text("دخول", style: TextStyle(fontSize: 24)),
              ),
              ]),
            ),
            
          ),
          

    );
  }
}