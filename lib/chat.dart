import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyChat.length,
        itemBuilder:(context, i) => Column(
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                child: CircleAvatar(backgroundImage: AssetImage(dummyChat[i].avt)),
              ),
              title:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   Text(dummyChat[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   Text(dummyChat[i].time,
                    style: TextStyle(color: Color(0xff8d8b8b), fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(dummyChat[i].msg,
                  style: TextStyle(color: Color(0xff8d8b8b), fontSize: 15.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 0, 15, 0),
              child: Divider(height: 1),
            ),
          ],
        ),
      ),
    );
  }
}

class Model {
  final String name, msg, time, avt;
  Model({this.name, this.msg, this.time, this.avt});
}
List<Model> dummyChat = [
  Model(
      name: "Viraj",
      msg: "Ssup",
      time: "10:49 pm",
      avt: "images/profile.png"
  ),
   Model(
      name: "Parag",
      msg: "??",
      time: "10:17 pm",
      avt: "images/profile.png"
   ),
   Model(
      name: "Radhika",
      msg: "Call me",
      time: "8:14 pm",
      avt: "images/profile.png"
   ),
   Model(
      name: "Deepika",
      msg: "Thank you!",
      time: "3:58 pm",
      avt: "images/profile.png"
   ),
   Model(
      name: "Rutuja",
      msg: "Cool! This is awesome",
      time: "8:10 am",
      avt: "images/profile.png"
   ),
   Model(
      name: "Gaurav",
      msg: "Broo",
      time: "Yesterday",
      avt: "images/profile.png"
   ),
  Model(
      name: "Alia",
      msg: "Okay",
      time: "17/02/21",
      avt: "images/profile.png"
  ),
];