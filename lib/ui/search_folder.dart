import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';

class SearchFolder extends StatefulWidget {
  const SearchFolder({Key? key}) : super(key: key);

  @override
  _SearchFolderState createState() => _SearchFolderState();
}

class _SearchFolderState extends State<SearchFolder> {
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
        child: Text('Search folder'),
      ),
    );
  }
}
