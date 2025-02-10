import 'package:flutter/material.dart';
import 'package:rblog/services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  var isLoading = false;
  final authService = AuthService();
  void loginUser(String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();
    await authService.login(password, context);
    isLoading = false;
    notifyListeners();
  }

  void logOut(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    await authService.signOut(context);
    isLoading = false;
    notifyListeners();
  }
}
