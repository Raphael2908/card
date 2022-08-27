import 'package:card/about/about.dart';
import 'package:card/home/home.dart';
import 'package:card/login/login.dart';
import 'package:card/profile/profile.dart';
import 'package:card/topics/topics.dart';

var routes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
  '/topics': (context) => const TopicScreen(),
};
