import 'package:flutter/material.dart';
// import 'package:sportboo_mobile_client/modules/livescore/livescore.dart';
// import 'package:sportboo_mobile_client/modules/profile/profile.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.tabItem,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (tabItem == 'LiveScore') {
      child = const Text('Livescore');
    } else if (tabItem == 'P2P') {
      child = Text(
        'P2P Entry',
        style: TextStyle(fontSize: 35),
      );
    } else if (tabItem == 'Betslip') {
      child = const Center(
        child: Text(
          'Betslip Page',
          style: TextStyle(fontSize: 35),
        ),
      );
    } else if (tabItem == 'Wallet') {
      child = Text(
        'Wallet Entry',
        style: TextStyle(fontSize: 35),
      );
    } else if (tabItem == 'Profile') {
      child = const Text('Profile');
    } else {
      child = const Text('Livescore');
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (roueSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
