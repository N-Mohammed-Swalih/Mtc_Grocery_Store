import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _groceryItems = [
    ["Rice", "39.0", "./assets/rice.png", Colors.white],
    ["Sugar", "45.0", "./assets/sugar.png", Colors.white],
    ["Jaggery", "50.0", "./assets/jaggery.png", Colors.white],
    ["Chilly", "220.0", "./assets/chillies.png", Colors.white],
    ["Toor Dal", "110.0", "./assets/toordal.png", Colors.white],
    ["Lentils", "65.0", "./assets/lentils.png", Colors.white],
  ];

//list of card items
  final List _cartItems = [];

  get groceryItems => _groceryItems;

  get cartItems => _cartItems;

  //add item to card
  void addItemToCart(int index) {
    _cartItems.add(_groceryItems[index]);
    notifyListeners();
  }

  //remove the item from the cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate the price of the items in the cart

  String calculateCartPrice() {
    double totalprice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalprice += double.parse(_cartItems[i][1]);
    }
    return totalprice.toStringAsFixed(2);
  }
}
