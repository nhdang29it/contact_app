import 'package:contact_app/components/drop_down_button.dart';
import 'package:contact_app/components/icon_button.dart';
import 'package:contact_app/components/list_tile.dart';
import 'package:contact_app/contrast.dart';
import 'package:contact_app/cubits/app/app_cubit.dart';
import 'package:contact_app/models/user.dart';
import 'package:contact_app/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';

List<User> listUser = const [
  User(
      name: "nguyen hai dang",
      description: "mobile developer",
      email: "dang@gmail.com",
      phoneNumber: "0123456789",
      avatarUrl: "",
      group: "D"),
  User(
      name: "le nhut linh",
      description: "web developer",
      email: "linh@gmail.com",
      phoneNumber: "0123456789",
      avatarUrl: "",
      group: "L"),
  User(
      name: "nguyen tan phat",
      description: "frontend developer",
      email: "phat@gmail.com",
      phoneNumber: "0123456789",
      avatarUrl: "",
      group: "P"),
  User(
      name: "le minh duc",
      description: "UI/UX designer",
      email: "duc@gmail.com",
      phoneNumber: "0123456789",
      avatarUrl: "",
      group: "D"),
  User(
      name: "tran quan vinh",
      description: "backend developer",
      email: "vinh@gmail.com",
      phoneNumber: "0123456789",
      avatarUrl: "",
      group: "1"),
  User(
      name: "vo phong vu",
      description: "IT helpdesk",
      email: "vu@gmail.com",
      phoneNumber: "0123456789",
      avatarUrl: "",
      group: "V")
];

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Text(
                    "392 TOTAL",
                    style: TextStyle(color: subTextColor),
                  ),
                if (Responsive.isDesktop(context))
                  const Text(
                    "Contacts",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyDropDownButton(
                        currentValue: "filter",
                        items: [
                          DropdownMenuItem(
                            value: "filter",
                            child: Text("Filter by"),
                          ),
                          DropdownMenuItem(
                            value: "sort",
                            child: Text("Sort by"),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      MyDropDownButton(
                        currentValue: "az",
                        items: [
                          DropdownMenuItem(
                            value: "az",
                            child: Text("A-Z"),
                          ),
                          DropdownMenuItem(
                            value: "za",
                            child: Text("Z-A"),
                          )
                        ],
                      ),
                      Spacer(),
                      MyIconButton(
                        icon: Icons.list_alt,
                        foregroundColor: textColor,
                        backgroundColor: bgTileColor,
                      ),
                      MyIconButton(
                        icon: Icons.grid_4x4_outlined,
                      ),
                      MyIconButton(
                        icon: Icons.gps_fixed,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: GroupedListView(
              elements: listUser,
              groupBy: (user) => user.group,
              groupSeparatorBuilder: (String groupByValue) => Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 24.0),
                child: Text(
                  groupByValue == "1" ? "PINNED" : groupByValue.toUpperCase(),
                  style: const TextStyle(color: subTextColor),
                ),
              ),
              itemBuilder: (context, user) {
                return MyListTile(
                  firstFieldSubTitle: user.name,
                  secondFieldSubtitle: user.description,
                  secondFieldTitle: user.phoneNumber,
                  firstFieldTitle: user.email,
                  avatarUrl: user.group,
                  onTap: () {
                    context.read<AppCubit>().openRightSideBar();
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
