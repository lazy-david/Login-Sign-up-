import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        // Single Child Scrool view
        child: SingleChildScrollView(
          // begin of first column
          child: Column(
            children: [
              Icon(
                Icons.anchor_rounded,
                size: 100,
              ),
              Text(
                "Welcome back, you've been missed",
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(
                height: 70,
              ),
              // Email TextField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Email",
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // Password TextField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Password",
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              // Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
          // ending of first column
        ),
      ),
    );
  }
}
