import "package:flutter/material.dart";

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHOOSE LOCATION"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(child: Text("CHOOSE LOCATION SCREEN")),
    );
  }
}
