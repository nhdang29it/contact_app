import 'package:contact_app/components/side_bar/input_field.dart';
import 'package:contact_app/components/side_bar/sidebar_list_tile.dart';
import 'package:contact_app/contrast.dart';
import 'package:contact_app/models/side_bar_item.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

class MySideBar extends StatefulWidget {
  const MySideBar({super.key});

  @override
  State<MySideBar> createState() => _MySideBarState();
}

class _MySideBarState extends State<MySideBar> {
  final double listTileFontSize = 14;

  final FontWeight listTileFontWeight = FontWeight.w600;

  final SideMenuController sideMenuController = SideMenuController();

  String currentTitle = "";

  final textTileColor = const Color(0xffcecece);
  final List<SideBarItemModel> listSideBarItemModel = const [
    SideBarItemModel(title: "All people", icon: Icons.person_outline_outlined),
    SideBarItemModel(
        title: "All Bussinesses", icon: Icons.business_center_outlined),
    SideBarItemModel(title: "Favorites", icon: Icons.star_border),
    SideBarItemModel(title: "Tags", icon: Icons.question_mark_outlined),
    SideBarItemModel(title: "Smart Tags", icon: Icons.smart_toy),
    SideBarItemModel(title: "Events", icon: Icons.arrow_forward_ios_rounded),
  ];

  List<SideBarItemModel> filterSideBarItemModel = [];

  @override
  void initState() {
    super.initState();
    filterSideBarItemModel = [...listSideBarItemModel];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // color: Colors.blue,
          border: Border(right: BorderSide(color: borderColor))),
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ListTile(
                title: Text("Alloy", style: TextStyle(color: textColor)),
                trailing: Icon(
                  Icons.notifications,
                  color: textColor,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                child: MyInputField(onChanged: (value) {
                  setState(() {
                    filterSideBarItemModel = listSideBarItemModel
                        .where((element) => element.title
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                }),
              ),
            ],
          ),
          Flexible(
            child: ListView(
              children: [
                const SizedBox(
                  height: 15,
                ),
                for (final SideBarItemModel item in filterSideBarItemModel)
                  SideBarListTile(
                      title: item.title,
                      listTileFontSize: listTileFontSize,
                      listTileFontWeight: listTileFontWeight,
                      textTileColor: textTileColor,
                      onTap: () {
                        setState(() {
                          currentTitle = item.title;
                        });
                      },
                      selected: item.title == currentTitle,
                      textColor: textColor,
                      selectedTileColor: const Color.fromARGB(255, 81, 81, 81),
                      leadingIcon: item.icon),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: const BoxDecoration(
                        color: bgTileColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "UNTAGGED",
                              style: TextStyle(
                                fontSize: listTileFontSize,
                                fontWeight: listTileFontWeight,
                                color: const Color(0xff585858),
                              ),
                            ),
                            Text(
                              "41",
                              style: TextStyle(
                                  fontSize: listTileFontSize + 2,
                                  color: textColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      fixedSize: const Size(double.infinity, 50),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Add Contact"),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Text("D"),
            ),
            title: Text(
              "Dexter Adams",
              style: TextStyle(color: textColor),
            ),
            trailing: Icon(
              Icons.settings,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
