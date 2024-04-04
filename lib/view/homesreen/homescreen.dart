// ignore_for_file: prefer_const_constructors

import 'package:appdrawerflutter/view/registerscreen/regscreen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to login page",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: username,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: password,
                      hintStyle: TextStyle(color: Colors.amber),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10))),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      username = usernamecontroller.text;
                      password = passwordcontroller.text;
                      print(usernamecontroller.text);
                      print(passwordcontroller.text);
                      setState(() {});
                    },
                    child: Text("Login")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registerscreen()));
                    },
                    child: Text("Register")),
                Text(
                  username,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  password,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
