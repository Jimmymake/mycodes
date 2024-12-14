import 'package:flutter/material.dart';

class Myconsumerclasss extends ChangeNotifier {
  List<int> mylist = [1, ];

  void addnumber() {
    int lastnumber = mylist.last;
    
  
    mylist.add(lastnumber+1);
    notifyListeners();
  }
}
