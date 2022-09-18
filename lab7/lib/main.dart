import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab 6"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        // child: Image(
        //   image: AssetImage("images/snapshot.png"),
        // ),
        // child: Icon(
        //     Icons.account_circle_sharp,
        //     size: 200
        // ),
      //     child: ElevatedButton(
      //       child: Text('Shrey Naik'),
      //       onPressed: () {},
      //       style: ElevatedButton.styleFrom(
      //         primary: Colors.orange[500],
      //         padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      //         textStyle: TextStyle(
      //             fontFamily: "Monaco",
      //             fontSize: 24.0,
      //             fontWeight: FontWeight.bold
      //         )
      //       ),
      //     ),
      // ),
      //   child: IconButton(
      //     icon: Icon(
      //         Icons.mail_outline_rounded,
      //         size: 30.0,
      //     ),
      //     onPressed: () {},
      //     tooltip: "Send an E-mail",
      //   ),
      //   child: Directionality(
      //     textDirection: TextDirection.rtl,
      //     child: TextButton.icon(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         backgroundColor: MaterialStateProperty.all(Colors.redAccent),
      //       ),
      //       icon: Icon(
      //         Icons.notifications_active,
      //         color: Colors.white,
      //         size: 24.0,
      //       ),
      //       label: Text(
      //         "Subscribe",
      //         style: TextStyle(
      //           fontSize: 18.0,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ),
        child: FlatButton(
          onPressed: () {},
          child: Text("Click Me"),
          color: Colors.orange,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Text("Click"),
      ),
    );
  }
}
