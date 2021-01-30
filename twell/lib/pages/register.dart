import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 364,
              child: TextField(
                textAlign: TextAlign.center,
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.12),
                  hintText: "USERNAME",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              height: 40,
              child: ElevatedButton(
                child: Text(
                  "Login"
                ),
                onPressed: (){},
              ),
            ),
          ]
        )
      )
    );
  }
}