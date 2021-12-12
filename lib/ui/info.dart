import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (selected) {},
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            title: Text('Process'),
            icon: Icon(Icons.report),
          ),
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        child: Text('Info'),
      ),
    );
  }
}
