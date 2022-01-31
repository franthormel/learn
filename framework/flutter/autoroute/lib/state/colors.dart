import 'package:flutter/material.dart';

class ColorsProvider with ChangeNotifier {
  bool _authenticated = false;

  final _favorites = <Color>[];

  bool get isAuthenticated => _authenticated;
  bool get isNotAuthenticated => !_authenticated;

  void login() {
    _authenticated = true;
    notifyListeners();
  }

  void logout() {
    _authenticated = false;
    notifyListeners();
  }

  List<Color> get favoriteColors => _favorites;

  void colorTapped(Color value) {
    if (isFavorite(value)) {
      _removeFromFavorite(value);
    } else {
      _addToFavorite(value);
    }
  }

  void _addToFavorite(Color value) {
    _favorites.add(value);
    notifyListeners();
  }

  void _removeFromFavorite(Color value) {
    _favorites.remove(value);
    notifyListeners();
  }

  bool isFavorite(Color value) {
    return _favorites.contains(value);
  }
}
