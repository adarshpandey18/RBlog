import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.black,
      duration: Duration(seconds: 2),
    ),
  );
}

String formatDate(DateTime date) {
  return "${date.day}-${date.month}-${date.year}";
}
