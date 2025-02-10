import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rblog/services/alert_box.dart';
import 'package:rblog/utils/text_string.dart';
import 'package:rblog/utils/utils.dart';

class AuthService {
  login(String password, BuildContext context) async {
    try {
      // logging in user with password
      // checking the password

      // login in user
      await FirebaseAuth.instance.signInAnonymously();
      // Scaffold Message
      showSnackBar(
        context,
        TextString.loginMessage,
      );
      Navigator.pushNamed(context, '/home');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        AlertBox.alertBox(
          title: 'User Not Found',
          content: 'There is no existing user record corresponding to email.',
          buttonText: 'Try Again',
          function: () => {},
          context: context,
        );
      } else if (e.code == 'invalid-email') {
        AlertBox.alertBox(
          title: 'Invalid Email',
          content: 'The provided value for the email user property is invalid.',
          buttonText: 'Try Again',
          function: () => {},
          context: context,
        );
      } else if (e.code == 'wrong-password') {
        AlertBox.alertBox(
          title: 'Invalid Password',
          content: 'The password entered is invalid.',
          buttonText: 'Try Again',
          function: () => {},
          context: context,
        );
      } else if (e.code == 'invalid-credential') {
        AlertBox.alertBox(
          title: 'Incorrect email id or password',
          content: 'The enterd credentials is incorrect.',
          buttonText: 'Try Again',
          function: () => {},
          context: context,
        );
      } else {
        AlertBox.alertBox(
          title: 'Error',
          content: e.toString(),
          buttonText: 'Try Again',
          function: () => {},
          context: context,
        );
      }
    } catch (e) {
      AlertBox.alertBox(
        title: 'Exception',
        content: e.toString(),
        buttonText: 'Try Again',
        function: () => {},
        context: context,
      );
    }
  }

  signOut(BuildContext context) async {
    try {
      // signing out user
      await FirebaseAuth.instance.signOut();

      showSnackBar(
        context,
        TextString.logoutMessage,
      );

      Navigator.pushReplacementNamed(context, '/login');
    } catch (e) {
      AlertBox.alertBox(
        title: 'Exception',
        content: e.toString(),
        buttonText: 'Try Again',
        function: () => {},
        context: context,
      );
    }
  }
}
