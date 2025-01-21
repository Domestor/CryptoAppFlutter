import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key, required String coinName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.asset(
        'assets/svg/bitcoin-logo.png',
        height: 30,
        width: 30,
      ),
      title: Text(
        'Bitcoin',
        style: theme.textTheme.labelSmall,
      ),
      subtitle: Text(
        '95000\$',
        style: Theme.of(context).textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed('/coin');
      },
    );
  }
}
