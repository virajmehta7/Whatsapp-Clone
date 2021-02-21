import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    CircleAvatar(radius: 28.0, backgroundImage: (AssetImage("images/profile.png"))),
                    CircleAvatar(backgroundColor: Colors.green, radius: 10.0,
                      child: Icon(Icons.add, size: 18.0, color: Colors.white),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("My Status",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  SizedBox(height: 5.0),
                  Text("Tap to add status update",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 35,
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Text('Recent updates',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black45),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
              itemCount: recent.length,
              itemBuilder:(context, i) => Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(width: 2, color: Colors.green)
                      ),
                      child: CircleAvatar(backgroundImage: AssetImage(recent[i].avt)),
                    ),
                    title:  Text(recent[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(recent[i].time,
                        style: TextStyle(color: Color(0xff8d8b8b), fontSize: 15.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(80, 0, 15, 0),
                    child: Divider(height:1),
                  ),
                ],
              ),
          ),
          Container(
            height: 35,
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Text('Viewed updates',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black45),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: viewed.length,
            itemBuilder:(context, i) => Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(width: 2, color: Colors.grey)
                    ),
                    child: CircleAvatar(backgroundImage: AssetImage(viewed[i].avt)),
                  ),
                  title:  Text(viewed[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(viewed[i].time,
                      style: TextStyle(color: Color(0xff8d8b8b), fontSize: 15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 0, 15, 0),
                  child: Divider(height:1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Recent {
  final String avt, name, time;
  Recent({this.avt, this.name, this.time});
}
List<Recent> recent = [
  Recent(
    avt: "images/profile.png",
    name: "Viraj",
    time: "Just Now"
  ),
  Recent(
      avt: "images/profile.png",
      name: "Pankaj",
      time: "54 minutes ago"
  ),
  Recent(
      avt: "images/profile.png",
      name: "Jasmine",
      time: "Today, 1:17 am"
  )
];

class Viewed {
  final String avt, name, time;
  Viewed({this.avt, this.name, this.time});
}
List<Viewed> viewed = [
  Viewed(
      avt: "images/profile.png",
      name: "Gaurav",
      time: "Today, 9:15 am"
  ),
  Viewed(
      avt: "images/profile.png",
      name: "Deepika",
      time: "Today, 12:06 am"
  )
];