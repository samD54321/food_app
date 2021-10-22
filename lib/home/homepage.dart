import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Welcome, ",
                          style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 20.0,
                          )),
                      TextSpan(
                          text: "User",
                          style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )),
                    ]),
                  ),
                )
              ]
          )
        ],
      )
    );
  }

}