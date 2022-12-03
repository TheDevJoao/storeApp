// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storeapp/pages/home.page.dart';
import 'package:storeapp/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF5F5F5),
          padding: EdgeInsets.only(
            left: 20,
            top: 80,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 40),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Welcome,",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("Sign in to continue"),
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                              child: Text("Sign Up")),
                        ],
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Forgot your password?"),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.indigo,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/facebook.png",
                        ),
                      ),
                      Text(
                        "Sign in with Facebook",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.indigo,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/google.png",
                        ),
                      ),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
