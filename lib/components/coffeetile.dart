import 'package:flutter/material.dart';

import '../models/coffee.dart';

// ignore: must_be_immutable
class CoffeeTile extends StatelessWidget {
  final coffee Coffee;
  final Widget icon;
  void Function()? onPressed;

  CoffeeTile({super.key, required this.Coffee, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown[500],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: ListTile(
        title: Text(Coffee.coffeename, style: const TextStyle(color: Colors.white)),
        subtitle: Text(Coffee.coffeeprice, style: const TextStyle(color: Colors.white)),
        leading: Image.asset(Coffee.imagepath),
        trailing: IconButton(icon: icon, onPressed: onPressed, color: Colors.white),
      ),
    );
  }
}
