import 'package:flutter/material.dart';
import 'call.dart';
import 'camera.dart';
import 'chat.dart';
import 'status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 1, length: 4, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  fab(int index) {
    if (index == 1) {
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.message,color: Colors.white),
      );
    } else if (index == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){},
            mini: true,
            backgroundColor: Color(0xffe8e9ee),
            child: Icon(Icons.create,color: Color(0xff635d5d)),
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xFF25D366),
            child: Icon(Icons.camera_alt_rounded,color: Colors.white),
          ),
        ],
      );
    } else if (index == 3) {
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFF25D366),
        child: Icon(Icons.add_call,color: Colors.white,),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.only(left: 12)),
            Icon(Icons.more_vert),
            Padding(padding: EdgeInsets.only(left: 12)),
          ],
          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey.shade400,
            controller: _controller,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS")
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Camera(),
            Chat(),
            Status(),
            Call()
          ],
        ),
        floatingActionButton: fab(_controller.index)
    );
  }
}