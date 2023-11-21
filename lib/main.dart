import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/HomePage.dart';
import 'package:flutter_application_4/models/coffee_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Coffee_Shop(),
        builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
    );
  }
}
