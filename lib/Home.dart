import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CardsDetails.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CardsDetails _data = new CardsDetails();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            'Asmaul Husna Demo',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25, color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: _data.getLength(),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 60,
                      height: 200,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Card(
                          child: Center(
                            child: Text(
                              "${_data.fetchName(index)}",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 28),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          color: Colors.blueGrey[900],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
