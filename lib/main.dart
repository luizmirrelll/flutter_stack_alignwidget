import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan stack dan align"),
        ),
        body: Stack(
          children: <Widget>[
            //background
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        )
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ))
              ],
            ),
            //listview dgn teks
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "ini adalah text yang ada di lapisan dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "ini adalah text yang ada di lapisan dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "ini adalah text yang ada di lapisan dari stack",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "ini adalah text yang ada di lapisan dari stack",
                          style: TextStyle(fontSize: 30),
                        ))
                  ],
                )
              ],
            ),
            //button ditengah bawah
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                child: Text("my button"),
                color: Colors.amber,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
