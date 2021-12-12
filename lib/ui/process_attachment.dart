import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';

class ProcessAttachment extends StatefulWidget {
  const ProcessAttachment({Key? key}) : super(key: key);

  @override
  _ProcessAttachmentState createState() => _ProcessAttachmentState();
}

class _ProcessAttachmentState extends State<ProcessAttachment> {
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
        child: Text('Process attachment'),
      ),
    );
  }
}
