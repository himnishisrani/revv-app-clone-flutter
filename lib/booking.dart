
// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'main.dart';
import 'rental.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 245, 245, 245),
            title: Text(
              'My bookings',
              style: TextStyle(
                  color: Colors.grey[500],
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 34),
            ),
            bottom: TabBar(
              labelColor: Colors.lightBlueAccent[400], //<-- selected text color
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                    child: Text(
                  "Active",
                  style: TextStyle(fontSize: 20),
                )),
                Tab(
                    child: Text(
                  "Completed",
                  style: TextStyle(fontSize: 20),
                )),
              ],
            ),
          ),
          body: Center(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image(
                          image: AssetImage('assets/nobooking.png'),
                          height: 400,
                          width: 250),
                      SizedBox(height: 10),
                      Positioned(
                          // left: 2,
                          // right: 2,

                          bottom: 50,
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  padding: EdgeInsets.only(left: 50),
                                  width: 200,
                                  height: 50,
                                  child: ElevatedButton(
                                      child: Text('Book now',
                                          style: TextStyle(fontSize: 20.0)),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyAppRental1()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color.fromARGB(255, 74,
                                            190, 169), // Background color
                                      )))))
                    ],
                  ),
                ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: 'Bookings',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.strikethrough_s),
                  label: 'Subscriptions',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.directions_car),
                  label: 'Rentals',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.view_headline),
                  label: 'More',
                ),
              ],
              unselectedItemColor: Color.fromARGB(255, 147, 147, 147),
              selectedItemColor: Color.fromARGB(255, 14, 190, 158)),
        ),
      ),
    );
  }
}