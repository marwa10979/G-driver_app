import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class c1 extends StatelessWidget {
  const c1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(children: [
            Container(
              height: 230,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xff363f93),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 30,
                    child: Text(
                      'بطاقة الائتمان ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
              width: 1.30,
            ),
            Container(
              height: 350,
              child: Stack(
                children: [
                  Positioned(
                      child: Material(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SafeArea(
                        child: Card(
                          color: Color.fromARGB(255, 181, 187, 235),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'اسم العميل',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'رقم الكارت ',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.00)),
                                    ),
                                    labelText: "تاريخ الدفع",
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.00)),
                                    ),
                                    labelText: "cvv ",
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'ادفع الان',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
