import 'package:MiAlcaldia/Widgets/snackbar/error_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginRegisterController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool success;
  String userEmail;
  

  void dispose() {
    // Clean up the controller when the Widget is disposed
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<User> register() async {
    try {
      final User user = (await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user;
      Get.snackbar('Bienvenido', ' ${user.email} Su registro ha sido exitoso');
      print('registro Exitoso');
      Future.delayed(
        Duration(seconds: 2),
        () {
          Get.toNamed("/principalpage1", arguments: user);
        },
      );
      return user;
    } catch (e) {
      Get.snackbar('Error', 'Correo invalido',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
