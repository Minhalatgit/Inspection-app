import 'package:flutter/material.dart';
import 'package:inspection_app/routes/app_routes.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var checked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/logo.png'),
            ),
            Text(
              'Login to',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Inspection App',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.supervised_user_circle,
                          color: Colors.grey,
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        hintText: 'Username',
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.grey,
                            ),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                )),
                            hintText: 'Password',
                          )),
                      Row(
                        children: [
                          Checkbox(
                            value: checked,
                            onChanged: (value) {
                              setState(() {
                                checked = value!;
                              });
                            },
                          ),
                          Text(
                            'Remember password',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Forgot password?'),
                          )
                        ],
                      ),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green.shade700),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.HOME_VIEW);
                        },
                        label: Text(
                          'LOGIN',
                        ),
                        icon: Icon(
                          Icons.logout,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'or Login via',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        label: Text(
                          'FingerPrint',
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: Icon(
                          Icons.fingerprint,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
