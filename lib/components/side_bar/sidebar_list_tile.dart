import 'package:flutter/material.dart';

class SideBarListTile extends StatelessWidget {
  const SideBarListTile(
      {super.key,
      required this.listTileFontSize,
      required this.listTileFontWeight,
      required this.textTileColor,
      required this.textColor,
      required this.title,
      required this.selectedTileColor,
      this.selected = false,
      this.onTap,
      required this.leadingIcon});

  final double listTileFontSize;
  final FontWeight listTileFontWeight;
  final Color textTileColor, textColor, selectedTileColor;
  final IconData leadingIcon;
  final String title;
  final bool selected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: listTileFontSize,
            fontWeight: listTileFontWeight,
            color: textTileColor),
      ),
      leading: Icon(leadingIcon, color: textColor),
      selected: selected,
      onTap: onTap,
      selectedTileColor: selectedTileColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
    );
  }
}
