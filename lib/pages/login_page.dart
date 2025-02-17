// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:convert';

import 'package:deneme/pages/feed_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoginPage = false;
  bool isDone = false;
  bool isChecked = false;
  bool passwordVisible = false;
  String firstName = "";
  String lastName = "";
  String username = "";
  String password = "";
  String confirmedPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: !isDone
            ? isLoginPage
                ? Column(
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            "Hey there,",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 35),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 3),
                          child: Text(
                            "Welcome back!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: "E-mail",
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            fillColor: Colors.grey.shade100,
                            filled: true,
                          ),
                          onChanged: (value) {
                            username = value;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 8, top: 10),
                        child: TextFormField(
                          obscureText: passwordVisible,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              child: passwordVisible
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onTap: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                          ),
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 24,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.purple),
                          child: TextButton(
                              onPressed: () async {
                                //login clicked
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FeedPage(),
                                    ));
                              },
                              child: Text(
                                "LOG IN",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 56, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.add,
                              size: 56,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont have an account yet ?",
                          ),
                          TextButton(
                              onPressed: () {
                                //login page direction
                                setState(() {
                                  isLoginPage = false;
                                });
                              },
                              child: Text("Register"))
                        ],
                      )
                    ],
                  )
                : Column(
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            "Hey there,",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 35),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              hintText: "First Name",
                              prefixIcon: Icon(Icons.person),
                              fillColor: Colors.grey.shade100,
                              filled: true),
                          onChanged: (value) {
                            firstName = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              hintText: "Last Name",
                              prefixIcon: Icon(Icons.person),
                              fillColor: Colors.grey.shade100,
                              filled: true),
                          onChanged: (value) {
                            lastName = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: "E-mail",
                            prefixIcon: Icon(Icons.email),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                          ),
                          onChanged: (value) {
                            username = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: passwordVisible,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              child: passwordVisible
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onTap: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                          ),
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: passwordVisible,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              child: passwordVisible
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onTap: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: "Confirm password",
                            prefixIcon: Icon(Icons.password),
                            fillColor: Colors.grey.shade100,
                            filled: true,
                          ),
                          onChanged: (value) {
                            confirmedPassword = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool!;
                                });
                                print(isChecked);
                              },
                            ),
                            Text(
                              "By clicking this button, you confirm that\n your data may be shared by our partners.",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.purple),
                          child: TextButton(
                              onPressed: () {
                                //create account
                                if (isChecked == true &&
                                    firstName.isNotEmpty &&
                                    lastName.isNotEmpty &&
                                    password.isNotEmpty &&
                                    confirmedPassword.isNotEmpty &&
                                    password == confirmedPassword) {
                                  print("user created");
                                }
                              },
                              child: Text(
                                "REGISTER",
                                style:
                                    TextStyle(fontSize: 5, color: Colors.white),
                              )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ?",
                          ),
                          TextButton(
                              onPressed: () {
                                //login page direction
                                setState(() {
                                  isLoginPage = true;
                                });
                              },
                              child: Text("Log in"))
                        ],
                      )
                    ],
                  )
            : CircularProgressIndicator());
  }
}


/*

FutureBuilder(
        future: fetchUser("john@gmail.com", "m38rmF\$"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(
              strokeWidth: 12,
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("hata"),
            );
          } else if (snapshot.hasData) {
            return Center(
              child: Text("girildi"),
            );
          } else {
            return Text("ters");
          }
        },
      )
 */