
import 'package:flutter/material.dart';


// defining the properties for the logo
Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 200,
    height: 200,
  );
}

TextField resuableTextField(String text, IconData Icon, bool isPasswordType,
TextEditingController controller) {
  return TextField(controller: controller,
  obscureText: isPasswordType,
  cursorColor: Colors.white,
  style: TextStyle(color: Colors.white.withOpacity(0.9)),
  decoration: InputDecoration(prefixIcon: Icon(icon, color:Colors.white70,),
  labelText: text,
  labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
  filled: true,
  ),
  ) 
}
