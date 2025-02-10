import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rblog/core/theme.dart';
import 'package:rblog/firebase_options.dart';
import 'package:rblog/provider/auth_provider.dart';
import 'package:rblog/views/auth/auth_wrapper.dart';
import 'package:rblog/views/auth/login_screen.dart';
import 'package:rblog/views/user/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'R Blog',
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
        debugShowMaterialGrid: false,
        themeMode: ThemeMode.system,
        darkTheme: CustomTheme.darkTheme,
        theme: CustomTheme.lightTheme,
        initialRoute: '/auth_wrapper',
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => LoginScreen(),
          );
        },
        routes: {
          '/auth_wrapper': (context) => AuthWrapper(),
          '/login': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
        },
        home: LoginScreen(),
      ),
    );
  }
}
