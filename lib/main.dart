import 'package:digital_wallet/android_theme.dart';
import 'package:digital_wallet/wallet_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carteira',
      theme: kAndroidTheme,
      home: WalletPage(),
    );
  }
}
