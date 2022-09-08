import 'package:e_commerc_api/consts/global_colors.dart';
import 'package:e_commerc_api/screens/home_screen.dart';

import 'package:e_commerc_api/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'favorite_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectedindex = 0;
  List<Widget> widgetpages = [
    HomeScreen(),
    FavoriteScreen(),
    SettingsScreen(),
    // SearchScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: lightCardColor,
          selectedItemColor: lightIconsColor,
          unselectedItemColor: lightTextColor,
          currentIndex: selectedindex,
          onTap: (index) {
            selectedindex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(label: "", icon: Icon(IconlyBold.home)),
            BottomNavigationBarItem(label: "", icon: Icon(IconlyBold.heart)),
            BottomNavigationBarItem(label: "", icon: Icon(IconlyBold.setting)),
            // BottomNavigationBarItem(label: "", icon: Icon(IconlyBold.search)),
          ]),
      body: widgetpages.elementAt(selectedindex),
    );
  }
}
