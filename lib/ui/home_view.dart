import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';
import 'package:inspection_app/ui/login_view.dart';
import 'package:inspection_app/ui/my_task.dart';

import 'home.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget body = Home();

  String appBarTitle = 'Inspection';
  bool showBackButton = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    const SizedBox(
                      height: 70,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/dp.jpg'),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Dow',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'john@gmail.com',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                title: const Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('My task'),
                leading: Icon(Icons.payment),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, AppRoutes.MY_TASK);
                },
              ),
              ListTile(
                title: const Text('Search folder'),
                leading: Icon(Icons.search),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Draft empty'),
                leading: Icon(Icons.mail),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Pending Submission'),
                leading: Icon(Icons.pending),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Map'),
                leading: Icon(Icons.map),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Calendar'),
                leading: Icon(Icons.calendar_today),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: showBackButton,
          title: Text(
            appBarTitle,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        body: body,
      ),
    );
  }
}
