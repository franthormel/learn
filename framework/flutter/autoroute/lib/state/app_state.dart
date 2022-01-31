import 'package:flutter/material.dart';

class AppStateManager with ChangeNotifier {
  bool _authenticated = false;

  final _colors = <Color>[];

  bool get isAuthenticated => _authenticated;

  void authenticate() {
    _authenticated = true;
    notifyListeners();
  }

  void logout() {
    _authenticated = false;
    notifyListeners();
  }

  List<Color> get colors => _colors;

  void addColor(Color value) {
    final colorIsNotPresent = !_colors.contains(value);

    if (colorIsNotPresent) {
      _colors.add(value);
      notifyListeners();
    }
  }

  void removeColor(Color value) {
    final colorIsPresent = _colors.contains(value);

    if (colorIsPresent) {
      _colors.remove(value);
      notifyListeners();
    }
  }
}
