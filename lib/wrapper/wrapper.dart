import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test/pages/HomePage.dart';
import 'package:firebase_test/pages/LogIn.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, Snapshot) {
            if (Snapshot.hasData) {
              return Homepage();
            } else {
              return Login();
            }
          }),
    );
  }
}
