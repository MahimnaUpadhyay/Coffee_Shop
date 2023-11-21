import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/coffee.dart';

class Coffee_Shop extends ChangeNotifier {
  // coffee list
  final List<coffee> _shop = [
    // black
    coffee(
        coffeename: 'Black Coffee',
        coffeeprice: 'Rs 50',
        imagepath: 'lib/image/blackcoffee.png'),

    // Latte
    coffee(
        coffeename: 'Latte',
        coffeeprice: 'Rs 60',
        imagepath: 'lib/image/latte.png'),

    // Espresso
    coffee(
        coffeename: 'Espresso',
        coffeeprice: 'Rs 150',
        imagepath: 'lib/image/espresso.png'),

    // Ice Coffee
    coffee(
        coffeename: 'Ice Coffee',
        coffeeprice: 'Rs 150',
        imagepath: 'lib/image/coldcoffee.png'),

    // Boba Tea
    coffee(
        coffeename: 'BoBa Tea',
        coffeeprice: 'Rs 200',
        imagepath: 'lib/image/bubble-tea.png'),

    // Cokkies
    coffee(
        coffeename: 'Cookies',
        coffeeprice: 'Rs 15',
        imagepath: 'lib/image/cookie.png'),

    // Pancake
    coffee(
        coffeename: 'Pancake',
        coffeeprice: 'Rs 250',
        imagepath: 'lib/image/pancake.png'),

    // Egg Sandwitch
    coffee(
        coffeename: 'Egg Sandwitch',
        coffeeprice: 'Rs 100',
        imagepath: 'lib/image/sandwich.png'),
  ];

  // user cart
  List<coffee> _usecart = [];

  // get coffee list
  List<coffee> get coffee_shop => _shop;

  // get user cart
  List<coffee> get user_cart => _usecart;

  // add item to cart
  void addItemFromCart(coffee coffee) {
    _usecart.add(coffee);
    notifyListeners();
  }

  // remove item to cart
  void removeItemFromCart(coffee coffee) {
    _usecart.remove(coffee);
    notifyListeners();
  }
}
