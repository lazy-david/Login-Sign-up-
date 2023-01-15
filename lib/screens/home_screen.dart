import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nnnnnnnnnn/screens/signin_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // for adding the logged in user into the app
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // 2nd column
            Column(
              children: [
                Text("Signed in as:"

                    // added the user data that was imported for the top

                    +
                    user.email!),
              ],
            ),
            // end of 2nd columnn

            // for the button
            Container(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Color(0xFF0069FE),
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () async {
                  // function for signing out

                  FirebaseAuth.instance.signOut();
                },
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: ((context) => const LoginScreen())));

                child: Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
