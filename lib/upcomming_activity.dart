import 'package:contact_app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

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
        child: ListView(
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
                  backgroundColor: Color.fromARGB(255, 135, 135, 135),
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  fixedSize: Size(150, 30),
                ),
                Text("Filter by", style: TextStyle(color: textColor)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TimelineTile(
              alignment: TimelineAlign.start,
              indicatorStyle: IndicatorStyle(
                color: Colors.purple,
                width: 40,
                iconStyle: IconStyle(
                  iconData: Icons.phone,
                  // fontSize: 20,
                ),
                indicatorXY: 0.2,
                padding: const EdgeInsets.all(12.0),
              ),
              beforeLineStyle: const LineStyle(thickness: 2.5),
              endChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 140,
                ),
                color: Colors.amberAccent,
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.start,
              indicatorStyle: IndicatorStyle(
                color: Colors.purple,
                width: 40,
                iconStyle: IconStyle(
                  iconData: Icons.phone,
                  // fontSize: 20,
                ),
                indicatorXY: 0.2,
                padding: const EdgeInsets.all(12.0),
              ),
              beforeLineStyle: const LineStyle(thickness: 2.5),
              endChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 140,
                ),
                color: const Color.fromARGB(255, 91, 38, 189),
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.start,
              indicatorStyle: IndicatorStyle(
                color: Colors.purple,
                width: 40,
                iconStyle: IconStyle(
                  iconData: Icons.phone,
                  // fontSize: 20,
                ),
                indicatorXY: 0.2,
                padding: const EdgeInsets.all(12.0),
              ),
              beforeLineStyle: const LineStyle(thickness: 2.5),
              endChild: Container(
                constraints: const BoxConstraints(minHeight: 120),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text("Call haidang in the dribbble 03/06 11:10"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
