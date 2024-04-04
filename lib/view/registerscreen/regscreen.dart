// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
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
                  "Register page",
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
                          borderSide: BorderSide(width: 10),
                          borderRadius: BorderRadius.circular(10))),
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
                          borderSide: BorderSide(width: 10),
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final cred = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: usernamecontroller.text,
                              password: passwordcontroller.text);

                      setState(() {});
                    },
                    child: Text("register")),
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
