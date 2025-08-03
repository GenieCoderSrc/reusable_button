import 'package:flutter/material.dart';
import 'package:reusable_button/reusable_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reusable Button Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      routes: {'/next': (context) => const NextScreen()},
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppButton(
              title: 'Submit',
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Button Pressed')));
              },
              loading: false,
              bgColor: Colors.blue,
              txtColor: Colors.white,
            ),
            const SizedBox(height: 20),
            AppTxtBtn(
              title: "Don't have an account?",
              btnText: 'Sign Up',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            AppTxtRouteButton(
              title: 'Already a user?',
              btnText: 'Login',
              route: '/next',
            ),
            const SizedBox(height: 20),
            VisibilityButton(
              isVisible: true,
              btnTitle: 'Visible Button',
              onPressed: () {},
              icon: Icons.visibility,
            ),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Screen')),
      body: const Center(child: Text('You have navigated to the next screen!')),
    );
  }
}
