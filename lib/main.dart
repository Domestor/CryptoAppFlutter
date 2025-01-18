import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoCurrenciestListApp());
}

class CryptoCurrenciestListApp extends StatelessWidget {
  const CryptoCurrenciestListApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currenciest Listd',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        appBarTheme: AppBarTheme(
            backgroundColor: const Color.fromARGB(255, 31, 31, 31),
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
            centerTitle: true),
        dividerColor: Colors.white24,
        listTileTheme: ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          labelSmall: TextStyle(
            // ignore: deprecated_member_use
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        useMaterial3: false,
      ),
      routes: {
        '/': (context) => CryptoListScreen(),
        '/coin': (context) => CryptoCoinScreen()
      },
    );
  }
}

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({
    super.key,
  });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme.bodyMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Currenciest List'),
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          leading: Image.asset(
            'assets/svg/bitcoin-logo.png',
            height: 30,
            width: 30,
          ),
          title: Text(
            'Bitcoin',
            style: theme,
          ),
          subtitle: Text(
            '95000\$',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.of(context).pushNamed('/coin');
          },
        ),
      ),
    );
  }
}

class CryptoCoinScreen extends StatelessWidget {
  const CryptoCoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitcoin'),
      ),
    );
  }
}
