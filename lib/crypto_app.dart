import 'package:flutter/material.dart';
import 'package:new_gen_project/features/crypto_list/crypto_list_screen.dart';
import 'package:new_gen_project/theme/theme.dart';
import 'package:new_gen_project/widgets/auth_screen.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: coinTheme,
      routes: {
        '/': (context) => const AuthWidget(),
        '/main_screen': (context) => const CryptoCoinsList(),
      },
    );
  }
}
