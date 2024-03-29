import 'package:flutter/material.dart';
import 'package:responsive_adaptive/adaptive_indicator.dart';
import 'package:responsive_adaptive/constants.dart';

class mobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.lightBlue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login  Now'),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 40.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 40.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Registor',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Center(
                          child: AdaptiveIndicator(
                        os: getOS(),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
