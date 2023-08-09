import 'package:flutter/material.dart';
import 'package:islami_sun/core/theme/my_theme.dart';
import 'package:islami_sun/moduls/home_layout.dart';
import 'package:islami_sun/moduls/quran/quran_details.dart';
import 'package:islami_sun/moduls/quran/quran_view.dart';
import 'package:islami_sun/moduls/splash_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranView.routeName: (context) => QuranView(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
    );
  }
}
