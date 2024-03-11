import 'package:contact_app/contrast.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {required this.firstFieldSubTitle,
      required this.secondFieldSubtitle,
      required this.secondFieldTitle,
      required this.firstFieldTitle,
      required this.avatarUrl,
      this.onTap,
      super.key});

  final void Function()? onTap;
  final String firstFieldTitle,
      secondFieldTitle,
      firstFieldSubTitle,
      secondFieldSubtitle,
      avatarUrl;

  // final backgroundColor = Colors.black;
  final textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: borderColor, width: 1.5),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Text(avatarUrl),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  firstFieldTitle,
                  style: TextStyle(color: textColor),
                ),
                Text(
                  firstFieldSubTitle,
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  secondFieldTitle,
                  style: TextStyle(color: textColor),
                ),
                Text(
                  secondFieldSubtitle,
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
          ),
          Icon(
            Icons.more,
            color: textColor,
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
