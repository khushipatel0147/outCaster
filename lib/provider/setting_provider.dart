import 'package:flutter/cupertino.dart';

class SettinsgProvider extends ChangeNotifier
{
  bool lock=false;
  bool finger=false;
  bool pass=false;

  bool ilock=false;
  bool ifinger=false;
  bool ipass=false;
  void app(bool i)
  {
    lock=i;
    notifyListeners();
  }
  void use(bool j)
  {
    finger=j;
    notifyListeners();
  }
  void change(bool k)
  {
    pass=k;
    notifyListeners();
  }
  void iapp(bool i)
  {
    ilock=i;
    notifyListeners();
  }
  void iuse(bool j)
  {
    ifinger=j;
    notifyListeners();
  }
  void ichange(bool i)
  {
    ipass=i;
    notifyListeners();
  }
}