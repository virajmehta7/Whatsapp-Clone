import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder:(context, i) => Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                child: CircleAvatar(backgroundImage: AssetImage(calls[i].avt)),
              ),
              title:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(calls[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.call_received, color: Colors.green, size: 20),
                          Text(calls[i].time,
                            style: TextStyle(color: Color(0xff8d8b8b), fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.call, size: 30, color: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 0, 15, 0),
              child: Divider(height:1),
            ),
          ],
        ),
      ),
    );
  }
}

class Calls{
  final String avt, name, time;
  Calls({this.avt, this.name, this.time});
}
List<Calls> calls = [
  Calls(
    avt: "images/profile.png",
    name: "Jasmine",
    time: " Yesterday, 7:19 pm"
  ),
  Calls(
      avt: "images/profile.png",
      name: "Gaurav",
      time: " 17 February, 2:22 pm"
  ),
  Calls(
      avt: "images/profile.png",
      name: "Pankaj",
      time: " 17 February, 11:17 pm"
  ),
  Calls(
      avt: "images/profile.png",
      name: "Pankaj",
      time: " 15 February, 2:21 pm"
  ),
  Calls(
      avt: "images/profile.png",
      name: "Deepika",
      time: " 15 February, 12:28 pm"
  ),
  Calls(
      avt: "images/profile.png",
      name: "Rutuja",
      time: " 13 February, 9:06 pm"
  ),
];