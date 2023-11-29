import 'package:flutter/material.dart';
import 'package:flutter_surprise_test/app/routes/router.dart';
import 'package:flutter_surprise_test/app/screens/auth_login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black38))),
      ),
      onGenerateRoute: Routes.generateRoute,
      home: const AuthLoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
