import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_sun/core/theme/my_theme.dart';
import 'package:islami_sun/moduls/home_layout.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash_view";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            MyTheme.themeMode != ThemeMode.dark
                ? "assets/images/splash.png"
                : "assets/images/splash_dark.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
