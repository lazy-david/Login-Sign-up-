import 'package:flutter/material.dart';
import 'package:nnnnnnnnnn/utils/colors_utils.dart';

import '../resuable_widget/resucable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // to make it the size of the width of the device
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      // decoration for the background

      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4"),
            ],

            // for the direction of the gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),

      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(

              // for the media query of the logo
              20,
              MediaQuery.of(context).size.height * 0.2,
              20,
              0),
          child: Column(
            // location of the logo
            children: <Widget>[
              // calling the logo
              logoWidget("assets/images/logo.png")
            ],
          ),
        ),
      ),
    ));
  }
}


