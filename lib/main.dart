// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var key1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 100, 30, 100),
          child: Column(children: [
            Text(
              "Welcome Dear Student",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 50,
            ),
            Form(
              key: key1,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffix: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        )),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return "Enter corrent name";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffix: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        )),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return "Enter corrent name";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffix: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        )),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return "Enter corrent name";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffix: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        )),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return "Enter corrent name";
                      } else {
                        return null;
                      }
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (key1.currentState!.validate()) {
                    final snackBar = SnackBar(
                        content: Text('please check your information :( '));
                  }
                },
                child: Text("send"))
          ]),
        ),
      ),
    );
  }
}
