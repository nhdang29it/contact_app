import 'package:contact_app/components/button.dart';
import 'package:contact_app/components/drop_down_button.dart';
import 'package:contact_app/components/upcomming_activity/list_activity.dart';
import 'package:flutter/material.dart';

class MyUpcommingActivity extends StatelessWidget {
  const MyUpcommingActivity({super.key});

  final Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(190, 123, 123, 123),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Text(
              "Upcoming Activity",
              style: TextStyle(
                  color: textColor, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  label: "This week",
                  icon: Icons.calendar_month,
                  backgroundColor: const Color.fromARGB(255, 135, 135, 135),
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  fixedSize: const Size(150, 30),
                ),
                const MyDropDownButton(
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
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: const ListActivity(listActivity: []),
            ),
            // TimelineTile(
            //   alignment: TimelineAlign.start,
            //   indicatorStyle: IndicatorStyle(
            //     color: Colors.green,
            //     width: 40,
            //     iconStyle: IconStyle(
            //       iconData: Icons.phone_outlined,
            //       // fontSize: 20,
            //     ),
            //     indicatorXY: 0.2,
            //     padding: const EdgeInsets.all(12.0),
            //   ),
            //   beforeLineStyle:
            //       const LineStyle(thickness: 1.5, color: Colors.blue),
            //   // afterLineStyle:
            //   //     const LineStyle(thickness: 2.5, color: Colors.red),
            //   endChild: Container(
            //     constraints: const BoxConstraints(
            //       minHeight: 140,
            //     ),
            //     color: Colors.amberAccent,
            //     child: Text("hehehehe heh h  lh lkdaf kj;ad fkj; j"),
            //   ),
            // ),
            // TimelineTile(
            //   alignment: TimelineAlign.start,
            //   indicatorStyle: IndicatorStyle(
            //     color: Colors.pink,
            //     width: 40,
            //     iconStyle: IconStyle(
            //       iconData: Icons.phone,
            //       // fontSize: 20,
            //     ),
            //     indicatorXY: 0.2,
            //     padding: const EdgeInsets.all(12.0),
            //   ),
            //   beforeLineStyle: const LineStyle(thickness: 1.5),
            //   endChild: Container(
            //     constraints: const BoxConstraints(
            //       minHeight: 140,
            //     ),
            //     color: const Color.fromARGB(255, 91, 38, 189),
            //   ),
            // ),
            // TimelineTile(
            //   alignment: TimelineAlign.start,
            //   indicatorStyle: IndicatorStyle(
            //     color: Colors.yellow,
            //     width: 40,
            //     iconStyle: IconStyle(
            //       iconData: Icons.phone,
            //       // fontSize: 20,
            //     ),
            //     indicatorXY: 0.2,
            //     padding: const EdgeInsets.all(12.0),
            //   ),
            //   beforeLineStyle: const LineStyle(thickness: 1.5),
            //   endChild: Container(
            //     constraints: const BoxConstraints(minHeight: 120),
            //     child: const Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         SizedBox(
            //           height: 20,
            //         ),
            //         Text("Call haidang in the dribbble 03/06 11:10"),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
