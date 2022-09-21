import 'package:flutter/material.dart';

import 'state.dart';

class HomeProvider extends ChangeNotifier {
  final state = HomeState();

  void changeIndex(int index) {
    state.currentIndex = index;
    notifyListeners();
  }

  void setIsLogin(){
    state.isLogin = true;
    notifyListeners();
  }
}
