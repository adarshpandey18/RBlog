import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 3),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'L O G I N',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),

                // Password Field
                TextFormField(
                  autocorrect: false,
                  autofocus: true,
                  enableSuggestions: false,
                  textAlign: TextAlign.center,
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Enter Password baby girl',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password cannot be empty baby girl!";
                    } else if (value.length < 6) {
                      return "Password must be at least 6 characters baby girl!";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 10),

                // Login Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(),
                  ),
                  onPressed: _login,
                  child: Text(
                    'L O G I N',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
