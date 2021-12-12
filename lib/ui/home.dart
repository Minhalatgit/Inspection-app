import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  getContainer(String text, IconData icon, String navigation) => Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          color: Colors.lightBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, navigation);
                },
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      );

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/home_image.png'),
                    fit: BoxFit.fill),
              ),
            )),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: getContainer('My Task', Icons.table_chart_sharp,
                            AppRoutes.MY_TASK)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: getContainer(
                            'Folder', Icons.folder, AppRoutes.SEARCH_FOLDER)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child:
                            getContainer('Other Inspector', Icons.group, '')),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: getContainer('Draft Attempt', Icons.email,
                            AppRoutes.DRAFT_EMPTY)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: getContainer('Map', Icons.map, AppRoutes.MAP)),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: getContainer('Calendar View',
                            Icons.calendar_today, AppRoutes.CALENDAR)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
