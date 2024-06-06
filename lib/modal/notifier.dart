import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../component/gridItems.dart';

//  final String imagePath;
//   final String itemName;
//   final int price;
//   final Color colors;

class notify extends ChangeNotifier {
  final _items = [
    ["lib/image/green-avocados.png", 'Avacado', 220, Colors.green],
    ["lib/image/banana.png", 'Banana', 120, Colors.yellow],
    ["lib/image/cococola.png", 'Coco-cola', 50, Colors.blue],
    ["lib/image/chicken.png", 'Chicken', 500, Colors.red]
  ];

  final _cart = [];

//adding item in cart
  void addCart(int index) {
    _cart.add(_items[index]);
    print(_cart);
    notifyListeners();
  }

// removing item from cart

  void remove(int index) {
    _cart.removeAt(index);
    notifyListeners();
  }

//add price

  String addPrice() {
    double Total = 0;
    _cart.forEach((i) {
      Total += i[2];
    });
    return Total.toString();
  }

  get items => _items;
  get cart => _cart;
}
