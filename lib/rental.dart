import 'package:flutter/material.dart';

class MyAppRental1 extends StatelessWidget {
  const MyAppRental1({Key? key}) : super(key: key);

  static const String _title = 'Sample AppRent';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.grey[300],
              centerTitle: true,
              title: Text(
                'Select City',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontFamily: 'Roboto',
                    fontSize: 24),
              )),
          backgroundColor: Colors.grey[300],
          body: Column(children: [
            Row(children: [
              Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                      child: Text('Bangalore',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 0, 0, 0))),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 255, 255, 255), // Background color
                      ))),
              Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                      child: Text('Mumbai',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 0, 0, 0))),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 255, 255, 255), // Background color
                      ))),
              Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                      child: Text('Hyderabad',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 0, 0, 0))),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 255, 255, 255), // Background color
                      )))
            ]),
            Row(children: [
              Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                      child: Text('Delhi-NCR',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 0, 0, 0))),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 255, 255, 255), // Background color
                      ))),
              Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                      child: Text('Chennai',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 0, 0, 0))),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 255, 255, 255), // Background color
                      ))),
              Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                      child: Text('Pune',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 0, 0, 0))),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 255, 255, 255), // Background color
                      )))
            ]),
            Container(
              padding: EdgeInsets.only(top: 15),
              color: Colors.grey[300],
              child: Text("Other cities",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontFamily: 'Roboto',
                      fontSize: 24)),
            ),
            Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                width: 1000,
                height: 70,
                child: ElevatedButton(
                    child: Text('Ahmedabad',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.centerLeft
                        // Background color
                        ))),
            Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                width: 1000,
                height: 70,
                child: ElevatedButton(
                    child: Text('Bhubaneshwar',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.centerLeft
                        // Background color
                        ))),
            Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                width: 1000,
                height: 70,
                child: ElevatedButton(
                    child: Text('Chandigarh',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.centerLeft
                        // Background color
                        ))),
            Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                width: 1000,
                height: 70,
                child: ElevatedButton(
                    child: Text('Coimbatore',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.centerLeft
                        // Background color
                        ))),
            Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                width: 1000,
                height: 70,
                child: ElevatedButton(
                    child: Text('Jaipur',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0))),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.centerLeft
                        // Background color
                        ))),
          ]),
        ));
  }
}
