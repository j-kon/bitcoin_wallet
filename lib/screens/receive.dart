import 'package:bitcoin_wallet/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ReceiveScreen extends StatefulWidget {
  const ReceiveScreen({super.key});
  static const id = 'receive';

  @override
  State<ReceiveScreen> createState() => _ReceiveScreenState();
}

class _ReceiveScreenState extends State<ReceiveScreen> {
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
                      'Receive Bitcoin',
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
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: QrImageView(
                      data: 'qrData',
                      size: 350,
                      version: QrVersions.auto,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'tswww340KLMAVBywhwje81732io1o',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                ],
              ),
              CustomButton(
                label: "Generate new address",
                color: Colors.orange,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
