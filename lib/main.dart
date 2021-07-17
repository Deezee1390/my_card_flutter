import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.teal.shade100,
                    Colors.teal.shade300,
                    Colors.teal.shade500,
                    Colors.teal.shade700,
                    Colors.teal.shade900
                  ])),
            ),
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/bing.jpg'),
                ),
                Text(
                  "Chandler Bing",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade100,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: (Divider(
                    color: Colors.teal.shade200,
                  )),
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "chandler@email.com",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic),
                      ),
                    )),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "+9876543210",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic),
                      ),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
