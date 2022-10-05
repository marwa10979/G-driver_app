import 'package:flutter/material.dart';

class Fi extends StatefulWidget {
  Fi({Key? key}) : super(key: key);

  @override
  State<Fi> createState() => _FiState();
}

class _FiState extends State<Fi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("حساب جديد"),
        elevation: 8,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        margin: EdgeInsets.all(40),
        child: Column(
          children: [
            TextFormField(
              maxLength: 6,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'الأسم الأول',
                labelText: 'الأسم الاول',
                fillColor: Colors.blue,
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              maxLength: 6,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'الأسم الأخير',
                labelText: 'الأسم الاخير',
                fillColor: Colors.blue,
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              maxLength: 32,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'البريد الإلكترونى',
                labelText: 'البريد الإلكترونى',
                fillColor: Colors.blue,
                prefixIcon: Icon(Icons.email),
              ),
            ),
            TextFormField(
              maxLength: 10,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'كلمة المرور',
                fillColor: Colors.blue,
                labelText: 'كلمة المرور',
                prefixIcon: Icon(Icons.password),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(' تسجيل الحساب'),
            )
          ],
        ),
      ),
    );
  }
}
