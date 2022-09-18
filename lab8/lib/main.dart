/// TUTORIAL 2
import "package:flutter/material.dart";
import 'package:lab8/quotes_main.dart';
import 'package:lab8/profile.dart';
import 'package:lab8/homeScreen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/profile': (context) => HomeScreen2(),
      '/quotes': (context) => QuotesMain(),
      '/practice': (context) => HomeScreen(),
    },
    home: RouteManager(),
  ));
}

class RouteManager extends StatelessWidget {
  const RouteManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/practice");
          },
          child: Text(
              "Tutorial 1"
          ),
        ),
        SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/profile");
          },
          child: Text(
            "Profile Page Project"
          ),
        ),
        SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/quotes");
          },
          child: Text(
            "Quotes Project"
          ),
        ),
      ],
    );
  }
}
