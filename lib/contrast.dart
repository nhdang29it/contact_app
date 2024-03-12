import 'package:contact_app/models/side_bar_item.dart';
import 'package:flutter/material.dart';

const double titleFontSize = 14;
const double subTitleFontSize = 12;
const double headTitleFontSize = 16;

const Color bgColor = Color(0XFF1B1B1B);
const Color buttonColor = Color(0XFF4388F5);
const Color borderColor = Color(0XFF2F2F2F);
const Color upcommingColor = Color.fromARGB(255, 29, 29, 29);
const Color textColor = Color(0XFFD6D6D6);
const Color subTextColor = Color(0XFF737373);
const Color bgTileColor = Color(0XFF3e3e3e);

const List<SideBarItemModel> listSideBarItemModel = [
  SideBarItemModel(title: "All people", icon: Icons.person_outline_outlined),
  SideBarItemModel(
      title: "All Bussinesses", icon: Icons.business_center_outlined),
  SideBarItemModel(title: "Favorites", icon: Icons.star_border),
  SideBarItemModel(title: "Tags", icon: Icons.question_mark_outlined),
  SideBarItemModel(title: "Smart Tags", icon: Icons.smart_toy),
  SideBarItemModel(title: "Events", icon: Icons.arrow_forward_ios_rounded),
];
