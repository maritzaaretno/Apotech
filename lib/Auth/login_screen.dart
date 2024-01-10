import 'package:flutter/material.dart';
import 'register_screen.dart';
import '../Main/home_screen.dart';
import 'welcome.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  Widget buildWelcomeBackText() {
    return const Row(
      children: [
        Text(
          'Welcome Back!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildEmailTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  Widget buildPasswordTextField(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot?',
            style: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    );
  }

  Widget buildSignInButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        navigateToScreen(context, const HomeScreen());
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 50),
        backgroundColor: const Color(0xFF4157FF),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Text(
            'SIGN IN',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildSignUpText(BuildContext context) {
    return TextButton(
      onPressed: () {
        navigateToScreen(context, RegisterScreen());
      },
      child: const Text(
        'Don\'t have an account? Sign Up',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            navigateToScreen(context, WelcomeScreen());
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildWelcomeBackText(),
              const SizedBox(height: 100),
              buildEmailTextField(),
              const SizedBox(height: 10),
              buildPasswordTextField(context),
              const SizedBox(height: 40),
              buildSignInButton(context),
              const SizedBox(height: 60),
              buildSignUpText(context),
            ],
          ),
        ),
      ),
    );
  }
}
