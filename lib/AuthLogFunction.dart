import 'dart:html';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthLog extends StatefulWidget {
  const AuthLog({super.key});

  @override
  State<AuthLog> createState() => _AuthLogState();
}

class _AuthLogState extends State<AuthLog> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthLog();
  }
}