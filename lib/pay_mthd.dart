import 'package:flutter/material.dart';
import 'package:flutter_application_1/soso.dart';
import 'package:flutter_application_1/test.dart';

class pay_mthd extends StatefulWidget {
  pay_mthd({Key? key}) : super(key: key);

  @override
  State<pay_mthd> createState() => _pay_mthdState();
}

class _pay_mthdState extends State<pay_mthd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("طرق الدفع", style: TextStyle(fontSize: 24))),
        elevation: 8,
      ),
      body: Center(
        child: Column(children: [
          Text(
            "الاجمالى بالجنية",
            style: TextStyle(fontSize: 28, color: Colors.red),
          ),
          Text("220جنية", style: TextStyle(fontSize: 28, color: Colors.red)),
          Container(
            width: 400,
            height: 400,
            color: Color.fromARGB(255, 201, 199, 185),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton( 
                  onPressed: () { Navigator.push(context,
                          MaterialPageRoute(builder: (context) => c1()));
                
            
                  },
                  child: Text("بطاقة الائتمان"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => So()));
                    },
                    child: Text("فورى")),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
