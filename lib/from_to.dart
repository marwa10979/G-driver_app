import 'package:flutter/material.dart';
import 'package:flutter_application_1/busseats.dart';

class trip extends StatefulWidget {
  trip({Key? key}) : super(key: key);

  @override
  State<trip> createState() => _tripState();
}

DateTime? _dateTime;

class _tripState extends State<trip> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("الرحلات المتاحة", style: TextStyle(fontSize: 24))),
          elevation: 8,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        
                    border: OutlineInputBorder(),
                    hintText: 'من',
                    prefixIcon: Icon(Icons.bus_alert_outlined),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.bus_alert_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue, width: 1),
                    ),
                    hintText: 'الي',
                  ),
                ),
              ),
              Text(_dateTime == null
                  ? 'برجاء ادخال التاريخ'
                  : _dateTime.toString()),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2030))
                          .then((date) {
                        setState(() {
                          _dateTime = date;
                        });
                      });
                    },
                    child: Text("ادخل التاريخ", style: TextStyle(fontSize: 24)),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => busseat2()));
                  },
                  child: Text("اختار الكرسى", style: TextStyle(fontSize: 24))),
                  
                  BottomNavigationBar(items: const<BottomNavigationBarItem>
          [BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'الرئيسية', ),
          
          BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'التذاكر'),
          BottomNavigationBarItem(icon:(Icon(Icons.home)),label: 'الدفع')
          ]),
                  ],
          ),
        )));
  }
}
