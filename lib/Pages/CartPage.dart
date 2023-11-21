import 'package:flutter/material.dart';
import 'package:flutter_application_4/components/coffeetile.dart';
import 'package:flutter_application_4/models/coffee.dart';
import 'package:flutter_application_4/models/coffee_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(coffee Coffee) {
    // remove from the cart
    Provider.of<Coffee_Shop>(context, listen: false).removeItemFromCart(Coffee);

    // toast message
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Item removed from the cart"),
      ),
    );
  }

  void payNow() {
    // Payment Method
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffee_Shop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: EdgeInsets.all(26.0),
              child: Column(
                children: [
                  // heading
                  const Text("One Tap Away from your Coffee",
                      style: TextStyle(fontSize: 25)),

                  // size box
                  const SizedBox(height: 25),

                  // list of coffee to buy
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.user_cart.length,
                        itemBuilder: (context, index) {
                          // get individual coffee
                          coffee eachcoffee = value.user_cart[index];

                          // return the tile of the coffe
                          return CoffeeTile(
                            Coffee: eachcoffee,
                            onPressed: () => removeFromCart(eachcoffee),
                            icon: const Icon(Icons.delete),
                          );
                        }),
                  ),

                  // Pay button
                   GestureDetector(
                    onTap: payNow,
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(child: Text("Pay Now", style: TextStyle(fontSize: 15, color: Colors.white))),
                    ),
                  )
                ],
              ),
            )));
  }
}
