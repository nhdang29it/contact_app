import 'package:contact_app/components/side_bar/navigation_rail.dart';
import 'package:contact_app/contact.dart';
import 'package:contact_app/contrast.dart';
import 'package:contact_app/cubits/app/app_cubit.dart';
import 'package:contact_app/cubits/side_bar/side_bar_cubit.dart';
import 'package:contact_app/responsive.dart';
import 'package:contact_app/side_bar.dart';
import 'package:contact_app/upcomming_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => SideBarCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 241, 241, 241)),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppCubitState>(
      builder: (context, state) {
        return Scaffold(
          key: key,
          backgroundColor: bgColor,
          appBar: !Responsive.isMobile(context)
              ? null
              : AppBar(
                  scrolledUnderElevation: 0,
                  backgroundColor: bgColor,
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "392 TOTAL",
                        style: TextStyle(color: subTextColor, fontSize: 12),
                      ),
                      Text(
                        "Contacts",
                        style: TextStyle(
                          fontSize: 18,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  actions: Responsive.isMobile(context)
                      ? [
                          IconButton(
                              onPressed: () {
                                key.currentState!.openEndDrawer();
                              },
                              icon: const Icon(Icons.info_outline))
                        ]
                      : null,
                ),
          drawer: !Responsive.isMobile(context)
              ? null
              : const Drawer(
                  width: 240,
                  child: MySideBar(),
                ),
          endDrawer: !Responsive.isMobile(context)
              ? null
              : const Drawer(
                  width: 360,
                  child: MyUpcommingActivity(),
                ),
          body: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // if (!Responsive.isMobile(context) && state.isOpenLeftSide)
                //   const Expanded(flex: 2, child: MySideBar()),
                if (!Responsive.isMobile(context))
                  state.isOpenLeftSide
                      ? const MySideBar(
                          width: 240,
                        )
                      : const MyNavigationRail(
                          destinations: [],
                          selectedIndex: 0,
                          listSideBarItemModel: listSideBarItemModel,
                        ),
                const MyContact(),
                if (!Responsive.isMobile(context) && state.isOpenRightSide)
                  Expanded(
                      flex: 4,
                      child: const MyUpcommingActivity().animate().fadeIn()),
              ],
            ),
          ),
        );
      },
    );
  }
}
