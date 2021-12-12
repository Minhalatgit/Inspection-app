import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyTask extends StatefulWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Task Process',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
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
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ToggleSwitch(
                  activeBgColor: [Colors.green],
                  initialLabelIndex: 0,
                  totalSwitches: 3,
                  labels: ['Day', 'Week', 'Month'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                ToggleSwitch(
                  cornerRadius: 20,
                  radiusStyle: true,
                  activeBgColor: [Colors.green],
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: ['Open', 'Closed'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Card(
                      elevation: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                            color: Colors.green,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Building Plan Examination Pt 9 (CS/CD), 11 Abbott Cres N3C 0C8',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '11 Abbott Cres',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '11 Abbott Crescent Cambridge, Ontario, N3C 0C8,CAN',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Folder Type:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('CD'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Disipline:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(''),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Assigned User:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(''),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Start date:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'End date:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Status:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(onPressed: () {}, icon: Icon(Icons.report)),
                                        IconButton(onPressed: () {}, icon: Icon(Icons.list_alt)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.cloud_upload_rounded)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.PROCESS_DETAILS);
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
