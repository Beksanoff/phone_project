import 'package:flutter/material.dart';

class AuthData extends StatefulWidget {
  const AuthData({
    super.key,
  });

  @override
  State<AuthData> createState() => _AuthDataState();
}

class _AuthDataState extends State<AuthData> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      Navigator.of(context).pushReplacementNamed('/main_screen');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final InputDecoration TextFieldDecoration = InputDecoration(
      labelText: 'Телефон или почта',
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
    // ignore: non_constant_identifier_names
    final InputDecoration TextFieldDecoration2 = InputDecoration(
      labelText: 'Пароль',
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(),
        SizedBox(
          width: 320,
          child: TextField(
            style: Theme.of(context).textTheme.bodyMedium,
            controller: _loginTextController,
            decoration: TextFieldDecoration,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 320,
          child: TextField(
            style: Theme.of(context).textTheme.bodyMedium,
            controller: _passwordTextController,
            obscureText: true,
            decoration: TextFieldDecoration2,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            _auth();
          },
          child: const Text('Продолжить'),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
              'Нажимая продолжить, вы принимаете\nпользовательское соглашение и политику\n                   конфиденциальности',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
