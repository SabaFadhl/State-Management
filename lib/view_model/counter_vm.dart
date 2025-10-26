import 'package:flutter/foundation.dart';

class CounterVM extends ChangeNotifier{
  int counter =0;
  addOne(){
    counter++;
    notifyListeners();
  }

}