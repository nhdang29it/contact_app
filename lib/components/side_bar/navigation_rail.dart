import 'package:contact_app/contrast.dart';
import 'package:contact_app/cubits/app/app_cubit.dart';
import 'package:contact_app/models/side_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyNavigationRail extends StatelessWidget {
  const MyNavigationRail(
      {required this.destinations,
      required this.selectedIndex,
      required this.listSideBarItemModel,
      super.key});

  final int selectedIndex;
  final List<NavigationRailDestination> destinations;
  final List<SideBarItemModel> listSideBarItemModel;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      leading: IconButton(
        onPressed: () {
          context.read<AppCubit>().openLeftSideBar();
        },
        icon: const Icon(Icons.menu),
      ),
      labelType: NavigationRailLabelType.all,
      trailing: const Tooltip(
        message: "Dexter Adams ss",
        margin: EdgeInsets.only(left: 68),
        verticalOffset: -13,
        textStyle: TextStyle(color: textColor),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: CircleAvatar(
          radius: 16,
          child: Text("D"),
        ),
      ),
      backgroundColor: bgColor,
      destinations: listSideBarItemModel
          .map(
            (e) => NavigationRailDestination(
              icon: Tooltip(
                message: e.title,
                margin: const EdgeInsets.only(left: 68),
                verticalOffset: -13,
                textStyle: const TextStyle(color: textColor),
                decoration: const BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Icon(e.icon),
              ),
              label: Text(e.title),
            ),
          )
          .toList(),
      selectedIndex: selectedIndex,
    );
  }
}
