import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';

class ProcessChecklist extends StatefulWidget {
  const ProcessChecklist({Key? key}) : super(key: key);

  @override
  _ProcessChecklistState createState() => _ProcessChecklistState();
}

class _ProcessChecklistState extends State<ProcessChecklist> {
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
        child: Text('Process checklist'),
      ),
    );
  }
}
