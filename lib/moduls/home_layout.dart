import 'package:flutter/material.dart';
import 'package:islami_sun/moduls/hadeht/hadeth_view.dart';
import 'package:islami_sun/moduls/quran/quran_view.dart';
import 'package:islami_sun/moduls/radio/radio_view.dart';
import 'package:islami_sun/moduls/settings/settings_view.dart';

import 'tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "Home_Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screensWidget = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_light.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Islami",
          ),
        ),
        body: screensWidget[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_hadeht.png")),
              label: "Hadeht",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
