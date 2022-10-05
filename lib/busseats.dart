import 'dart:html';
import 'package:flutter_application_1/entrip.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:async/async.dart';

import 'package:flutter/material.dart';

class busseat2 extends StatefulWidget {
  busseat2({Key? key}) : super(key: key);

  @override
  State<busseat2> createState() => _busseat2State();
}

class _busseat2State extends State<busseat2> {
  @override
  void initState() {
    this.getData();
  }

  bool _isloading = true;
  late List data;
  Future<String> getData() async {
    var response =
        await http.get(Uri.parse("http://waelzone.com/egbus/api.php"));
    setState(() {
      data = json.decode(response.body);
      _isloading = false;
    });
    return "ok";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _isloading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              itemCount: data.length == null ? 0 : data.length,
              itemBuilder: (context, index) {
                return data[index]["seat_status"] == '0'
                    ? InkWell(
                        child: Container(
                          child: Image.asset("seat.png"),
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              color: Colors.amber,
                              height: 400,
                              child: Column(children: [
                                Text(
                                  "Price : 55 L.E",
                                  style: TextStyle(fontSize: 60),
                                ),
                                ElevatedButton(
                                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => entrip()));},
                                  child: Text("احجز الان "),
                                ),
                                Text(
                                    "Rules: Confirm in 24 Hours is Mandatory..")
                              ]),
                            ),
                          );
                        },
                      )
                    : InkWell(
                        child: Container(
                          child: Image.asset("seat2.png"),
                        ),
                        onTap: () {},
                      );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
            ),
            
            
    );
  }
}
