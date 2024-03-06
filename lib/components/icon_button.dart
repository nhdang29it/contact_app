import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton(
      {required this.icon,
      this.foregroundColor,
      this.backgroundColor,
      super.key});

  final IconData icon;
  final Color? backgroundColor, foregroundColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
      ),
      style: IconButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
