import 'package:flutter/material.dart';
import 'package:my_flutter/router/router.dart';
import 'package:my_flutter/theme/theme.dart';

class CryptoCurrenciestListApp extends StatelessWidget {
  const CryptoCurrenciestListApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currenciest Listd',
      theme: darkTheme,
      routes: routes
    );
  }
}

