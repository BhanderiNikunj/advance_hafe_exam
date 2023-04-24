import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PattenControllor extends ChangeNotifier{
  double i=0;
  String Data = "1";

  void Pattorn(double q) {
    String Data1 = '';
    for (int i = 1; i <= q; i++) {
      Data1 += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    Data = Data1;
    notifyListeners();
  }

}