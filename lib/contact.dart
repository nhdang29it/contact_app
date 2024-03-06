import 'package:contact_app/components/drop_down_button.dart';
import 'package:contact_app/components/icon_button.dart';
import 'package:contact_app/components/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

List<Map<String, dynamic>> listData = [
  {"name": "dang", "group": "d"},
  {"name": "linh", "group": "l"},
  {"name": "thai", "group": "t"},
  {"name": "nhat", "group": "p"},
  {"name": "phat", "group": "p"},
  {"name": "duc", "group": "d"},
  {"name": "lan", "group": "l"},
  {"name": "long", "group": "l"},
  {"name": "dat", "group": "d"},
  {"name": "son", "group": "s"},
  {"name": "hai", "group": "h"},
  {"name": "dat", "group": "pinned"},
  {"name": "son", "group": "pinned"},
  {"name": "hai", "group": "pinned"},
];

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Container(
            // color: Colors.redAccent,
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "392 TOTAL",
                  style: TextStyle(color: Color(0xff3C3C3C)),
                ),
                const Text(
                  "Contacts",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  // color: Colors.amber,
                  child: const Row(
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
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.grey,
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
              elements: listData,
              groupBy: (data) => data["group"],
              groupSeparatorBuilder: (String groupByValue) => Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 24.0),
                child: Text(
                  groupByValue.toUpperCase(),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 130, 130, 130)),
                ),
              ),
              itemBuilder: (context, element) {
                return MyListTile(
                  firstFieldSubTitle: element["name"].toString(),
                  secondFieldSubtitle: "developer",
                  secondFieldTitle: "123 456 789",
                  firstFieldTitle: "haidang@gmail.con",
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
