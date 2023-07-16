import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:teashoppapp/models/drinkmodel.dart';

class TeaShop extends ChangeNotifier{
  //List of drinks for sale
  final List<Drink> _shop = [
    Drink(imagePath: 'assets/images/2.png', price: '\$20', name: "Blue tea"),
     Drink(imagePath: 'assets/images/3.png', price: '\$10', name: "Red Tea"),
      Drink(imagePath: 'assets/images/4.png', price: '\$17', name: "Cool tea"),
       Drink(imagePath: 'assets/images/5.png', price: '\$50', name: "Dream tea"),
  ];
  //list of drinks in the user cart
  // ignore: non_constant_identifier_names
  List<Drink> _userCart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;
  //get user cart
  List<Drink> get userCart => _userCart;
  //add a drink
  void addToCart(Drink drink) {
    userCart.add(drink);
    notifyListeners();
  }

//remove a drink
  void removeFromCart(Drink drink) {
    userCart.remove(drink);
    notifyListeners();
  }
}
