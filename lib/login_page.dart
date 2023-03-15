import 'dart:convert';

import 'package:api_interview/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart';

import 'controller/datacontroller.dart';

class Login_page extends StatelessWidget {
  Login_page({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  void login(String user, String password) async {
      final controller = Get.put(DataController(us:user,pass: password ));
      
   
     
   
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "email"),
              controller: emailcontroller,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "password"),
              controller: passwordcontroller,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: (() async {
                login(emailcontroller.text.toString(),
                    passwordcontroller.text.toString());
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
               }),
              child: Text("sign_up"),
            )
          ],
        ),
      )),
    );
  }
}
