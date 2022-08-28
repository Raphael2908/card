import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:card/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const FlutterLogo(
              size: 150,
            ),
            Flexible(
              child: LoginButton(
                icon: FontAwesomeIcons.userNinja,
                text: 'Continue as Guest',
                loginMethod: AuthService().anonLogin,
                color: Colors.deepPurple,
              ),
            ),
            Flexible(
              child: LoginButton(
                icon: FontAwesomeIcons.google,
                text: 'Google Login',
                loginMethod: AuthService().googleLogin,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Function loginMethod;

  const LoginButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.loginMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        label: Text(text),
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(24), backgroundColor: color),
        onPressed: () => loginMethod(),
      ),
    );
  }
}
