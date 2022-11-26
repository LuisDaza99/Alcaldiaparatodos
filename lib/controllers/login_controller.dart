import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GoogleSignIn googleUser = GoogleSignIn();

  // Example code of how to sign in with email and password.
  Future<User> signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user;
      Get.snackbar('Bienvenido', ' ${user.email} Su ingreso ha sido exitoso');
      print('Ingreso Exitoso');
      Future.delayed(
        Duration(seconds: 2),
        () {
          Get.toNamed("/principalpage2", arguments: user);
        },
      );
      return user;
    } catch (e) {
      Get.snackbar('Error', 'Correo o contraseña Invalido',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Example code for sign out.
  void _signOut() async {
    await _auth.signOut();
  }

  void signOut() async {
    final User user = await _auth.currentUser;
    if (user == null) {
      Get.snackbar('Exit', 'No ha iniciado sesión.',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    _signOut();
    final String uid = user.uid;
    Get.snackbar('Out', uid + ' Ha cerrado la sesión con éxito.',
        snackPosition: SnackPosition.BOTTOM);
    Get.toNamed("/home");
  }

  //signOutGoogle
  Future<void> signOutGoogle() async {
    await googleUser.signOut();

    print(" Usuario cerrado, Google.");
  }

//getUserGoogle
  GoogleSignInAccount getUserGoogle() {
    try {
      return googleUser.currentUser;
    } catch (error) {
      throw Exception("Algo ha ido mal recuperando googleSignIn.currentUser");
    }
  }

  //Example code of how to sign in with Google.
  Future<User> signInWithGoogle() async {
    try {
      UserCredential userCredential;

      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final GoogleAuthCredential googleAuthCredential =
          GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      userCredential = await _auth.signInWithCredential(googleAuthCredential);

      final user = userCredential.user;
      Get.snackbar('Hola', 'Se registro ${user.displayName} con Google');
      print('Ingreso Exitoso');

      Future.delayed(
        Duration(seconds: 2),
        () {
          Get.toNamed("/principalpage", arguments: user);
        },
      );
      return userCredential.user;
    } catch (e) {
      print(e);

      Get.snackbar('Error', 'Error al iniciar sesion con Google: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
