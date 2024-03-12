import 'package:contact_app/components/button.dart';
import 'package:contact_app/components/drop_down_button.dart';
import 'package:contact_app/components/upcomming_activity/list_activity.dart';
import 'package:contact_app/contrast.dart';
import 'package:contact_app/cubits/app/app_cubit.dart';
import 'package:contact_app/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyUpcommingActivity extends StatelessWidget {
  const MyUpcommingActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(189, 105, 105, 105),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (!Responsive.isMobile(context))
                IconButton(
                  onPressed: () {
                    context.read<AppCubit>().toggleRightSideBar();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Upcoming Activity",
                style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
            ],
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
          const Flexible(
            child: ListActivity(listActivity: []),
          ),
        ],
      ),
    );
  }
}

// class MyUpcommingActivity extends StatefulWidget {
//   const MyUpcommingActivity({super.key});

//   @override
//   State<MyUpcommingActivity> createState() => _MyUpcommingActivityState();
// }

// class _MyUpcommingActivityState extends State<MyUpcommingActivity> {
//   // final Color textColor = Colors.white;
//   bool isExtended = true;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
//       decoration: const BoxDecoration(
//         color: Color.fromARGB(189, 105, 105, 105),
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//       ),
//       child: NavigationRail(
//         destinations: const [
//           NavigationRailDestination(
//             icon: Icon(Icons.abc_outlined),
//             label: Text("heheh"),
//           ),
//           NavigationRailDestination(
//             icon: Icon(Icons.abc_outlined),
//             label: Text("hedddheh"),
//           ),
//           NavigationRailDestination(
//             icon: Icon(Icons.abc_outlined),
//             label: Text("hesdasdheh"),
//           ),
//         ],
//         selectedIndex: 0,
//         leading: IconButton(
//             onPressed: () {
//               setState(() {
//                 isExtended = !isExtended;
//               });
//             },
//             icon: Icon(Icons.read_more)),
//         trailing: Icon(Icons.home),
//         backgroundColor: Colors.transparent,
//         extended: isExtended,
//         indicatorColor: Colors.red,
//         minWidth: 40,
//       ),
//     );
//   }
// }
