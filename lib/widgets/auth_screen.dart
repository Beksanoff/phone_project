import 'package:flutter/material.dart';
import 'package:new_gen_project/widgets/auth_data.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Auth'),
      ),
      body: const AuthData(),
    );
  }
}
