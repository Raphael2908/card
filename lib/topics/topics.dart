import 'package:card/shared/bottom_nav.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
