import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {required this.label,
      required this.icon,
      this.onPressed,
      this.backgroundColor,
      this.foregroundColor,
      this.fixedSize,
      super.key});

  final void Function()? onPressed;
  final String label;
  final IconData icon;
  final Color? backgroundColor, foregroundColor;
  final Size? fixedSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        elevation: 0,
        fixedSize: fixedSize,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(label),
        ],
      ),
    );
  }
}
