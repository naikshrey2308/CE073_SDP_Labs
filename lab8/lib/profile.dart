import "package:flutter/material.dart";

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widgets"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: ProfilePage(),
      );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  num age = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image(
                  image: AssetImage("images/snapshot.png"),
                  width: 200,
                ),
              ),
            ],
          ),
          SizedBox(height: 50.0),
          Container(
            child: Text(
              "Name",
              style: TextStyle(
                fontSize: 18,
                color: Colors.redAccent,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            child: Text(
              "Shrey Naik",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(height: 24.0),
          Row(
            children: [
              ElevatedButton(
                child: Text("---"),
                onPressed: () {
                  setState(() {
                    age -= 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "Age",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              ElevatedButton(
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    age += 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                ),
              )
            ],
          ),
          SizedBox(height: 8.0),
          Container(
            child: Text(
              age.toString(),
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(height: 24.0),
          Row(
            children: [
              Icon(
                Icons.mail,
                color: Colors.redAccent,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                child: Text(
                  "naikshrey2308@gmail.com",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
