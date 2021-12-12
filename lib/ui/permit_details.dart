import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';

class PermitDetails extends StatefulWidget {
  const PermitDetails({Key? key}) : super(key: key);

  @override
  _PermitDetailsState createState() => _PermitDetailsState();
}

class _PermitDetailsState extends State<PermitDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          child: Text('Process detail'),
        ),
      ),
    );
  }
}
