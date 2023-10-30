import 'package:bitcoin_wallet/theme/color.dart';
import 'package:bitcoin_wallet/theme/svg.dart';
import 'package:bitcoin_wallet/widgets/custom_button.dart';
import 'package:bitcoin_wallet/widgets/custom_deco.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({super.key});
  static const id = 'screen';

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Center(
                    child: Text(
                      'Send Bitcoin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  TextField(
                    cursorColor: orange,
                    obscureText: true,
                    decoration: AppDecorations.formStyle.copyWith(
                        prefixIcon: SvgPicture.asset(
                          AppSvg.wallet,
                          color: orange,
                        ),
                        hintText: "Enter Address",
                        labelText: "Wallet Address"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: orange,
                    obscureText: true,
                    decoration: AppDecorations.formStyle.copyWith(
                        prefixIcon: SvgPicture.asset(
                          AppSvg.satoshi,
                          color: orange,
                        ),
                        hintText: "Enter Amount",
                        labelText: "Amount"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: orange,
                    obscureText: true,
                    decoration: AppDecorations.formStyle.copyWith(
                        prefixIcon: SvgPicture.asset(
                          AppSvg.mining,
                          color: orange,
                          height: 10,
                        ),
                        labelText: "Fee Rate"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      label: " Send",
                      icon: SvgPicture.asset(
                        AppSvg.send,
                        color: white,
                      ),
                      color: Colors.green,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: CustomButton(
                      label: " Scan",
                      icon: SvgPicture.asset(
                        AppSvg.scan,
                        color: white,
                      ),
                      color: Colors.blueAccent,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
