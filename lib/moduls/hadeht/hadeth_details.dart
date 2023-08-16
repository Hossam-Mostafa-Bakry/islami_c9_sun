import 'package:flutter/material.dart';
import 'package:islami_sun/core/theme/my_theme.dart';
import 'package:islami_sun/moduls/hadeht/hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routeName = "hadethScreen";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethContent;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              MyTheme.themeMode != ThemeMode.dark
                  ? "assets/images/background_light.png"
                  : "assets/images/background_dark.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Islami",
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin:
              const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 60),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            color: MyTheme.themeMode != ThemeMode.dark
                ? const Color(0xFFF8F8F8).withOpacity(0.75)
                : const Color(0xFF141A2E).withOpacity(0.75),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.title,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: MyTheme.themeMode != ThemeMode.dark
                          ? Colors.black
                          : const Color(0xFFFACC1D),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Icon(
                    Icons.play_circle_filled_sharp,
                    color: MyTheme.themeMode != ThemeMode.dark
                        ? Colors.black
                        : const Color(0xFFFACC1D),
                  )
                ],
              ),
              Divider(
                color: theme.canvasColor,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
              Expanded(
                child: Text(
                  args.content,
                  style: theme.textTheme.bodyMedium!.copyWith(),
                ),
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemBuilder: (context, index) => Text(
              //       verses[index],
              //       textAlign: TextAlign.center,
              //       style: const TextStyle(fontSize: 16),
              //     ),
              //     itemCount: verses.length,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
