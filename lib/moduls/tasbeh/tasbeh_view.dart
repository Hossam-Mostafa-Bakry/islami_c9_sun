import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  double angle = 0.0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  top: -60, child: Image.asset("assets/images/head_seb7a.png")),
              InkWell(
                onTap: () {
                  setState(() {
                    angle--;
                  });
                },
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    "assets/images/body_seb7a.png",
                    height: 250,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  dicresseAngle() {
    setState(() {
      angle++;
    });
  }
}
