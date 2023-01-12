import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//jump to function

void _signOut() {
  FirebaseAuth.instance.signOut();
  FirebaseUser user = FirebaseAuth.instance.currentUser;
  //print('$user');
  runApp(new MaterialApp(
    home: new LoginPage(),
  ));
}
