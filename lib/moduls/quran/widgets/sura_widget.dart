import 'package:flutter/material.dart';
import 'package:islami_sun/moduls/quran/quran_details.dart';

class SuraWidget extends StatelessWidget {
  // paramters
  final String suraName;
  final int suraNumber;

  const SuraWidget({
    super.key,
    required this.suraName,
    required this.suraNumber,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          QuranDetails.routeName,
          arguments: SuraData(suraName, suraNumber),
        );
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              suraName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 28,
              width: 2,
              color: theme.primaryColor,
            ),
            Text(
              suraName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraData {
  final String suraName;
  final int suraNumber;

  SuraData(this.suraName, this.suraNumber);
}
