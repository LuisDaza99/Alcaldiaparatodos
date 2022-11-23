import 'package:MiAlcaldia/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:MiAlcaldia/controllers/login_controller.dart';
import 'package:get/get.dart';

class PrincipalPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal Usuarios'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            FirebaseAuth.instance.signOut();
            controller.signOut();
          },
          color: Colors.blue,
          child: Icon(Icons.logout),
          textColor: Colors.white,
        ),
      ),
    );
  }
}
