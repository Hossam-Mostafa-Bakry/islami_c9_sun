import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_sun/core/theme/my_theme.dart';
import 'package:islami_sun/moduls/quran/widgets/sura_widget.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "quran_details";

  QuranDetails({
    super.key,
  });

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String chapterContent = "";
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraData;

    if (chapterContent.isEmpty) readFile(args.suraNumber);

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
                    "سورة ${args.suraName}",
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
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    verses[index],
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: MyTheme.themeMode != ThemeMode.dark
                          ? Colors.black
                          : const Color(0xFFFACC1D),
                    ),
                  ),
                  itemCount: verses.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFile(int suraIndex) async {
    String text = await rootBundle.loadString("assets/files/$suraIndex.txt");
    chapterContent = text;
    verses = chapterContent.split("\n");
    setState(() {});
    print(text);
    print(verses);
  }
}
