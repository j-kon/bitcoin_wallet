import 'package:bitcoin_wallet/theme/color.dart';
import 'package:bitcoin_wallet/widgets/custom_button.dart';
import 'package:bitcoin_wallet/widgets/custom_deco.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});
  static const id = 'recovery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recover testnet wallet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 1"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 2"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 3"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 4"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 5"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 6"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 7"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 8"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 9"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 10"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 11"),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: orange,
                          obscureText: true,
                          decoration: AppDecorations.formStyle.copyWith(
                              hintText: "Enter Word", labelText: "Word 12"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CustomButton(
                label: "Recover wallet",
                color: orange,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
