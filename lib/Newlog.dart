import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retreve/next.dart';

class Logs extends StatefulWidget {
  const Logs({Key? key}) : super(key: key);

  @override
  _LogsState createState() => _LogsState();
}

class _LogsState extends State<Logs> {

  GlobalKey <FormState> formkey =GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://img.freepik.com/free-vector/green-curve-abstract-background_53876-99569.jpg?size=626&ext=jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Image(
              image: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/747/747545.png"),
              width: 60,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(key:formkey,
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "User Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(color: Colors.white)),
              ),
              controller: username,
            ),
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
              obscureText: true,
              controller: password,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            Next(name: username.text, pass: password.text)),
                  );
                });
              },
              child: Text("Login",style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                    primary: Color(-2556719),
                    fixedSize: Size(360, 55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)))
            ),
          ),
        ],
      ),
    ));
  }
}
