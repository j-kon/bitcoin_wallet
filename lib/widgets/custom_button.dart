import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  static const double _customButtonHeight = 65;

  const CustomButton({
    required this.label,
    this.onTap,
    this.icon,
    this.color,
    Key? key,
  }) : super(key: key);

  CustomButton.inProgress({
    required String label,
    Key? key,
  }) : this(
          label: label,
          icon: Transform.scale(
            scale: 0.5,
            child: const CircularProgressIndicator(),
          ),
          key: key,
        );

  final VoidCallback? onTap;
  final String label;
  final Widget? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final icon = this.icon;
    return SizedBox(
      height: _customButtonHeight,
      width: double.infinity,
      child: icon != null
          ? ElevatedButton.icon(
              onPressed: onTap,
              label: Text(
                label,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: icon,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
              ),
            )
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              height: _customButtonHeight,
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    );
  }
}
