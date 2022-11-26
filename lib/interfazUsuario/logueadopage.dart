import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogueadoPage extends StatefulWidget {
  @override
  _LogueadoPageState createState() => _LogueadoPageState();
}

class _LogueadoPageState extends State<LogueadoPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  UserCredential userCredential;


  User _user;

  GoogleSignIn _googleSignIn = new GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Google Logueado"),
        ),
        body: Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(_user.photoURL),
          ),
          
        ));
  }
}
