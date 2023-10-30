import 'package:bitcoin_wallet/screens/home.dart';
import 'package:bitcoin_wallet/screens/recovery_screen.dart';
import 'package:bitcoin_wallet/theme/color.dart';
import 'package:bitcoin_wallet/theme/svg.dart';
import 'package:bitcoin_wallet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});
  static const id = 'coverscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Bitcoin Testnet Wallet'),
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      // ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/bitWhite.png',
                    width: 170,
                  ),
                ),
                const Text(
                  'Bitcoin testnet wallet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'A simple bitcoin wallet for your enjoyment.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CustomButton(
                  label: "Create a new wallet",
                  color: orange,
                  icon: SvgPicture.asset(
                    AppSvg.wallet,
                    color: white,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeScren(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RecoveryScreen(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.orange)),
                  child: const Text(
                    "Restoring existing wallet",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: orange),
                  ),
                )
              ],
            ),
            const Column(
              children: [
                Text(
                  "Your wallet, your coins 100% open-source & open-design",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
