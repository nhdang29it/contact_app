import 'package:contact_app/components/side_bar/input_field.dart';
import 'package:contact_app/components/side_bar/sidebar_list_tile.dart';
import 'package:contact_app/contrast.dart';
import 'package:contact_app/cubits/app/app_cubit.dart';
import 'package:contact_app/cubits/side_bar/side_bar_cubit.dart';
import 'package:contact_app/models/side_bar_item.dart';
import 'package:contact_app/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MySideBar extends StatelessWidget {
  const MySideBar({this.width, super.key});
  final double? width;
  final double listTileFontSize = 14;

  final FontWeight listTileFontWeight = FontWeight.w600;

  final textTileColor = const Color(0xffcecece);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: const BoxDecoration(
          border: Border(right: BorderSide(color: borderColor))),
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          if (!Responsive.isMobile(context))
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  context.read<AppCubit>().closeLeftSideBar();
                  context.read<SideBarCubit>().resetFilter();
                },
                icon: const Icon(Icons.menu),
              ),
            ),
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
                  context.read<SideBarCubit>().searchFilter(value);
                }),
              ),
            ],
          ),
          BlocBuilder<SideBarCubit, SideBarState>(
            builder: (context, state) {
              return Flexible(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    for (final SideBarItemModel item
                        in state.listFilterSideBarItemModel)
                      SideBarListTile(
                          title: item.title,
                          listTileFontSize: listTileFontSize,
                          listTileFontWeight: listTileFontWeight,
                          textTileColor: textTileColor,
                          onTap: () {
                            context.read<SideBarCubit>().changeIndex(
                                state.listFilterSideBarItemModel.indexOf(item));
                          },
                          selected: item.title ==
                              state.listSideBarItemModel[state.currentSelected]
                                  .title,
                          textColor: textColor,
                          selectedTileColor:
                              const Color.fromARGB(255, 81, 81, 81),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
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
                      child: FittedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            minimumSize: const Size(100, 50),
                            fixedSize: Responsive.isMobile(context)
                                ? const Size(double.infinity, 50)
                                : null,
                            maximumSize: const Size(180, 120),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Add Contact",
                                style: TextStyle(fontSize: subTitleFontSize),
                              ),
                              Icon(
                                Icons.add,
                                size: headTitleFontSize,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Text("D"),
            ),
            title: FittedBox(
              child: Text(
                "Dexter Adams ss",
                style: TextStyle(color: textColor),
              ),
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
