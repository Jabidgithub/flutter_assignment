import 'package:flutter/material.dart';
import 'package:flutter_surprise_test/app/routes/router.dart';

import '../widgets/custom_text_field.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({super.key});

  @override
  State<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  final scrollController = ScrollController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        const Color.fromARGB(255, 129, 64, 251)
                            .withOpacity(0.68),
                        Color.fromARGB(255, 129, 64, 251)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/location.png"),
                      ),
                      const Text(
                        "App",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            CustomTextField(
                              hintText: 'Email',
                              controller: emailController,
                              width: size.width * 0.6,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              hintText: 'Password',
                              controller: passwordController,
                              width: size.width * 0.6,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, Routes.homeRoute);
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Text(
                              'Forgot Password',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Don't have an account ?",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Create",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
