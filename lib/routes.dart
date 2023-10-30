import 'package:bitcoin_wallet/screens/screens.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  CoverScreen.id: (context) => const CoverScreen(),
  DashboardScreen.id: (context) => const DashboardScreen(),
  HomeScren.id: (context) => const HomeScren(),
  MnemonicScreen.id: (context) => const MnemonicScreen(),
  ReceiveScreen.id: (context) => const ReceiveScreen(),
  RecoveryScreen.id: (context) => const RecoveryScreen(),
  SendScreen.id: (context) => const SendScreen(),
  TransactionScreen.id: (context) => const TransactionScreen(),
};
