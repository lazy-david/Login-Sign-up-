import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nnnnnnnnnn/screens/signin_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("Welcome to your profile Screen"),
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color(0xFF0069FE),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context).pop(LoginScreen());
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
