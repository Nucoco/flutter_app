
import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String KboyText = 'KBOY';

  void changeKboyText(){
    KboyText = 'MR.Kboy';
    notifyListeners();
  }
}