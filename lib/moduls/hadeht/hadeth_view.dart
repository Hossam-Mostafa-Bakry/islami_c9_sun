import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_sun/moduls/hadeht/hadeth_details.dart';

class HadethView extends StatefulWidget {
  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    if (allHadeth.isEmpty) readFile();
    return Center(
      child: SizedBox(
        width: mediaQuery.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/hadeth_header.png",
            ),
            Divider(
              color: theme.canvasColor,
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),
            const Text(
              "الاحاديث",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            Divider(
              color: theme.canvasColor,
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      HadethDetailsView.routeName,
                      arguments: allHadeth[index],
                    );
                  },
                  child: Text(
                    allHadeth[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                separatorBuilder: (context, index) => Divider(
                  color: theme.primaryColor,
                  indent: 40,
                  endIndent: 40,
                ),
                itemCount: allHadeth.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  readFile() async {
    List<HadethContent> hadethList = [];

    // read from files
    String hadethText = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethList = hadethText.split("#");

    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int indexOfFirestLine = singleHadeth.indexOf("\n");
      print(indexOfFirestLine);
      String title = singleHadeth.substring(0, indexOfFirestLine);
      String content = singleHadeth.substring(indexOfFirestLine + 1);
      HadethContent allHadethContent = HadethContent(title, content);

      hadethList.add(allHadethContent);
    }

    allHadeth = hadethList;
    setState(() {});
  }
}

class HadethContent {
  String title;
  String content;

  HadethContent(this.title, this.content);
}
