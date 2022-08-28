import 'package:flutter/material.dart';
import 'package:card/login/login.dart';
import 'package:card/topics/topics.dart';
import 'package:card/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text('Waiting');
        } else if (snapshot.hasError) {
          return Text('An Error has occured ${snapshot.error}');
        } else if (snapshot.hasData) {
          return TopicScreen();
        } else {
          return LoginScreen();
        }
      }),
    );
  }
}
