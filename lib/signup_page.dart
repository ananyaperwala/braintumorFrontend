import 'package:flutter/material.dart';
import 'package:seg_d2/Phone.dart';
import 'package:seg_d2/auth_controller.dart';
import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


class SignUpPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    void signUp() {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (email.isNotEmpty && password.isNotEmpty) {
        AuthController.instance.register(email, password);
      } else {
        // Handle the case when either email or password is empty
        // Show an error message or provide feedback to the user
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // width: w,
            // height: h * 0.3,
            // decoration: BoxDecoration(
            //
            //   image: DecorationImage(
            //     image: AssetImage("images/loginimg.png"),
            //     // fit: BoxFit.cover,
            //   ),
            // ),
            child: Image(image: AssetImage("images/signup.jpg"),
                width: 150,
            )

          ),
          SizedBox(height: 50),
          Container(
          child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Create Your Account",
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    ]
    ),
          ),
          SizedBox(height: 50),
          Container(
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 7,
                  offset: Offset(1, 1),
                  color: Colors.grey.withOpacity(0.2),
                ),
              ],
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email ID",
                prefixIcon: Icon(Icons.email, color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 7,
                  offset: Offset(1, 1),
                  color: Colors.grey.withOpacity(0.2),
                ),
              ],
            ),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password, color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyPhone()),
    );
          },

            child: Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: w * 0.2),
        ],
      ),
      ),
    );
  }
}
