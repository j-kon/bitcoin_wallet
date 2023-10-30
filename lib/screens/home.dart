import 'package:bitcoin_wallet/screens/mnemonic_screen.dart';
import 'package:bitcoin_wallet/screens/dashboard.dart';
import 'package:bitcoin_wallet/screens/transaction.dart';
import 'package:bitcoin_wallet/theme/color.dart';
import 'package:flutter/material.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});
  static const id = 'home';

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  static const List<Widget> _pages = [
    DashboardScreen(),
    TransactionScreen(),
    MnemonicScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        //  backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.orange,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_vert_rounded),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Mnemonic',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
