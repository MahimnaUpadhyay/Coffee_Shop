import 'package:flutter/material.dart';
import 'package:flutter_application_4/components/coffeetile.dart';
import 'package:flutter_application_4/models/coffee_model.dart';
import 'package:flutter_application_4/models/coffee.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add to cart
  void addToCart(coffee Coffee) {
    // add to cart
    Provider.of<Coffee_Shop>(context, listen: false).addItemFromCart(Coffee);

    // toast message
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Item added to the cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffee_Shop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // heading
                  const Text("Comfi Cafe, Comfi Coffee",
                      style: TextStyle(fontSize: 25)),

                  // size box
                  const SizedBox(height: 50),

                  // list of coffee to buy
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.coffee_shop.length,
                        itemBuilder: (context, index) {
                          // get individual coffee
                          coffee eachcoffee = value.coffee_shop[index];

                          // return the tile of the coffe
                          return CoffeeTile(
                            Coffee: eachcoffee,
                            onPressed: () => addToCart(eachcoffee),
                            icon: Icon(Icons.add),
                          );
                        }),
                  )
                ],
              ),
            )));
  }
}
