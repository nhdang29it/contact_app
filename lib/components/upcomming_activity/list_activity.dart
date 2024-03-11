import 'package:contact_app/contrast.dart';
import 'package:contact_app/models/activity_model.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ListActivity extends StatelessWidget {
  const ListActivity({required this.listActivity, super.key});

  final List<ActivityModel> listActivity;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        if (index == 9) {
          return TimelineTile(
            alignment: TimelineAlign.start,
            indicatorStyle: IndicatorStyle(
              color: subTextColor,
              width: 30,
              height: 30,
              iconStyle:
                  IconStyle(iconData: Icons.phone_outlined, color: textColor),
              indicatorXY: 0.2,
              padding: const EdgeInsets.all(12.0),
            ),
            afterLineStyle:
                const LineStyle(thickness: 1.5, color: subTextColor),
            endChild: Container(
              constraints: const BoxConstraints(
                minHeight: 80,
              ),
              // color: Color.fromARGB(255, 190, 190, 190),
              child: const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Show more 10 item in this week",
                  style: TextStyle(color: Colors.blue, fontSize: titleFontSize),
                ),
              ),
            ),
          );
        }
        return TimelineTile(
          alignment: TimelineAlign.start,
          indicatorStyle: IndicatorStyle(
            color: subTextColor,
            width: 30,
            height: 30,
            iconStyle:
                IconStyle(iconData: Icons.phone_outlined, color: textColor
                    // fontSize: 20,
                    ),
            indicatorXY: 0.2,
            padding: const EdgeInsets.all(12.0),
          ),
          // beforeLineStyle: const LineStyle(
          //     thickness: 1.5, color: Color.fromARGB(255, 178, 178, 178)),
          // beforeLineStyle: const LineStyle(
          //     thickness: 1.5, color: Color.fromARGB(255, 229, 40, 40)),
          afterLineStyle: const LineStyle(thickness: 1.5, color: subTextColor),
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 90,
            ),
            padding: const EdgeInsets.only(top: 6.0),
            // color: Color.fromARGB(255, 190, 190, 190),
            child: const Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text("Call "),
                CircleAvatar(
                  child: Text("D"),
                ),
                Text(" nguyen hai dang "),
                Text(" discuss dribbble shots "),
                Chip(
                    label: Text(
                  " 03.12, 11:00AM ",
                  style: TextStyle(fontSize: 12),
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}

List<Widget> buildListActivity() {
  return [
    TimelineTile(
      alignment: TimelineAlign.start,
      indicatorStyle: IndicatorStyle(
        color: Colors.green,
        width: 30,
        height: 30,
        iconStyle: IconStyle(
          iconData: Icons.phone_outlined,
          // fontSize: 20,
        ),
        indicatorXY: 0,
        padding: const EdgeInsets.all(12.0),
      ),
      // beforeLineStyle: const LineStyle(
      //     thickness: 1.5, color: Color.fromARGB(255, 178, 178, 178)),
      beforeLineStyle: const LineStyle(
          thickness: 1.5, color: Color.fromARGB(255, 229, 40, 40)),
      afterLineStyle: const LineStyle(
          thickness: 1.5, color: Color.fromARGB(255, 178, 178, 178)),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 100,
        ),
        color: const Color.fromARGB(255, 204, 197, 173),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Call"),
            CircleAvatar(
              child: Text("D"),
            ),
            Text("nguyen hai dang"),
            Text("discuss dribbble shots"),
            Chip(
                label: Text(
              "03.12, 11:00AM",
              style: TextStyle(fontSize: 12),
            ))
          ],
        ),
      ),
    ),
    TimelineTile(
      alignment: TimelineAlign.start,
      indicatorStyle: IndicatorStyle(
        color: Colors.green,
        width: 30,
        height: 30,
        iconStyle: IconStyle(
          iconData: Icons.phone_outlined,
          // fontSize: 20,
        ),
        indicatorXY: 0,
        padding: const EdgeInsets.all(12.0),
      ),
      // beforeLineStyle: const LineStyle(
      //     thickness: 1.5, color: Color.fromARGB(255, 178, 178, 178)),
      beforeLineStyle: const LineStyle(
          thickness: 1.5, color: Color.fromARGB(255, 229, 40, 40)),
      afterLineStyle: const LineStyle(
          thickness: 1.5, color: Color.fromARGB(255, 178, 178, 178)),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 100,
        ),
        color: const Color.fromARGB(255, 204, 197, 173),
        child: const Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Call"),
              CircleAvatar(
                child: Text("D"),
              ),
              Text("nguyen hai dang"),
              Text("discuss dribbble shots"),
              Chip(
                  label: Text(
                "03.12, 11:00AM",
                style: TextStyle(fontSize: 12),
              ))
            ],
          ),
        ),
      ),
    ),
    TimelineTile(
      alignment: TimelineAlign.start,
      indicatorStyle: IndicatorStyle(
        color: Colors.green,
        width: 30,
        height: 30,
        iconStyle: IconStyle(
          iconData: Icons.phone_outlined,
          // fontSize: 20,
        ),
        indicatorXY: 0,
        padding: const EdgeInsets.all(12.0),
      ),
      // beforeLineStyle: const LineStyle(
      //     thickness: 1.5, color: Color.fromARGB(255, 178, 178, 178)),
      beforeLineStyle: const LineStyle(
          thickness: 1.5, color: Color.fromARGB(255, 229, 40, 40)),
      afterLineStyle: const LineStyle(
          thickness: 1.5, color: Color.fromARGB(255, 178, 178, 178)),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 100,
        ),
        color: const Color.fromARGB(255, 204, 197, 173),
        child: const Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Call"),
              CircleAvatar(
                child: Text("D"),
              ),
              Text("nguyen hai dang"),
              Text("discuss dribbble shots"),
              Chip(
                  label: Text(
                "03.12, 11:00AM",
                style: TextStyle(fontSize: 12),
              ))
            ],
          ),
        ),
      ),
    )
  ];
}
