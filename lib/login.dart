import 'package:flutter/material.dart';
import 'package:retreve/second.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  var email = TextEditingController();
  var password = TextEditingController();
  var value = "";
  var check = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter username",
              labelText: "User Name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            controller: email,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              controller: password,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  check = password.text;
                  value = email.text;
                  print("Password:" + password.text);
                  print("Email:" + email.text);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>Sec(name: email.text, pass: password.text),
                    ),
                  );
                });
              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    ));
  }
}
