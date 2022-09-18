import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab 8"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        // body: Row(
        // body: Padding(
        //   padding: const EdgeInsets.all(32.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     // crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       // Row(),
        //       Text("Shrey Naik"),
        //       FlatButton(
        //         onPressed: () {},
        //         color: Colors.redAccent,
        //         child: Text("Click Me",
        //           style: TextStyle(
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         color: Colors.blue,
        //         padding: EdgeInsets.all(24),
        //         child: Text("Hello World",
        //           style: TextStyle(
        //             color: Colors.white,
        //           ),
        //         ),
        //       )
        //     ]
        //   ),
        // ),

        body: Padding(
          padding: const EdgeInsets.fromLTRB(10,20,10,20),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.redAccent,
                        child: Text(
                          'Expanded',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Flexible(child: Container(
                      color: Colors.cyan[200],
                      child: Text(
                        'Flexible',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),)
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.purpleAccent,
                        child: Text(
                          'Expandend',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amberAccent,
                        child: Text(
                          'Expanded',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),)
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        color: Colors.redAccent,
                        child: Text(
                          'Flexible',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Flexible(child: Container(
                      color: Colors.cyan[200],
                      child: Text(
                        'Flexible',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),)
                  ],
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}