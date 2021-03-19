import 'package:flutter/material.dart';

class CardsDetails {
  static final getData = {
    "data": [
      {
        "Title": "ONE",
      },
      {
        "Title": "TWO",
      },
      {
        "Title": "THREE",
      },
      {
        "Title": "FOUR",
      },
      {
        "Title": "Five",
      },
      {
        "Title": "Six",
      },
      {
        "Title": "Seven",
      },
      {
        "Title": "Eight",
      },
      {
        "Title": "Nine",
      },
      {
        "Title": "Ten",
      },
      {
        "Title": "Eleven",
      },
    ]
  };
  List _data;
  CardsDetails() {
    _data = getData["data"];
  }

  String fetchName(int index) {
    return _data[index]["Title"];
  }

  int getLength() {
    return _data.length;
  }
}
