import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Language",
                textAlign: TextAlign.start,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 10.0),
                height: 45,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("English"),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Theme Mode",
                textAlign: TextAlign.start,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 10.0),
                height: 45,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dark"),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
