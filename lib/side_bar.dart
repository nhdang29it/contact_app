import 'package:flutter/material.dart';

class MySideBar extends StatelessWidget {
  const MySideBar({super.key});

  final double listTileFontSize = 14;
  final FontWeight listTileFontWeight = FontWeight.w600;
  final Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: const BoxDecoration(
            // color: Colors.blue,
            border: Border(
                right: BorderSide(color: Color.fromARGB(183, 182, 182, 182)))),
        padding: const EdgeInsets.only(right: 8),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              // color: Colors.amberAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    title: Text("Alloy", style: TextStyle(color: textColor)),
                    trailing: Icon(
                      Icons.notifications,
                      color: textColor,
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 239, 239, 239),
                                width: 2.0,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          contentPadding: EdgeInsets.all(1.0),
                          fillColor: Color.fromARGB(255, 215, 215, 215),
                          filled: true),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    title: Text(
                      "All Peple",
                      style: TextStyle(
                          fontSize: listTileFontSize,
                          fontWeight: listTileFontWeight,
                          color: textColor),
                    ),
                    leading:
                        Icon(Icons.person_outline_outlined, color: textColor),
                    selected: true,
                    selectedTileColor: const Color.fromARGB(255, 154, 154, 154),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  ListTile(
                    title: Text(
                      "All Bussinesses",
                      style: TextStyle(
                          fontSize: listTileFontSize,
                          fontWeight: listTileFontWeight,
                          color: textColor),
                    ),
                    leading:
                        Icon(Icons.business_center_outlined, color: textColor),
                  ),
                  ListTile(
                    title: Text(
                      "Favorites",
                      style: TextStyle(
                          fontSize: listTileFontSize,
                          fontWeight: listTileFontWeight,
                          color: textColor),
                    ),
                    leading: Icon(Icons.star_border, color: textColor),
                  ),
                  ListTile(
                    title: Text(
                      "Tag",
                      style: TextStyle(
                          fontSize: listTileFontSize,
                          fontWeight: listTileFontWeight,
                          color: textColor),
                    ),
                    leading:
                        Icon(Icons.question_mark_outlined, color: textColor),
                  ),
                  ListTile(
                    title: Text(
                      "Smart Tags",
                      style: TextStyle(
                          fontSize: listTileFontSize,
                          fontWeight: listTileFontWeight,
                          color: textColor),
                    ),
                    leading: Icon(Icons.smart_toy, color: textColor),
                  ),
                  ListTile(
                    title: Text(
                      "Events",
                      style: TextStyle(
                          fontSize: listTileFontSize,
                          fontWeight: listTileFontWeight,
                          color: textColor),
                    ),
                    leading: Icon(Icons.event, color: textColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 214, 214, 214),
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
                                  color: const Color.fromARGB(255, 95, 95, 95),
                                ),
                              ),
                              Text(
                                "41",
                                style: TextStyle(
                                    fontSize: listTileFontSize,
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
                        children: [Text("Add Contact"), Icon(Icons.add)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
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
      ),
    );
  }
}
