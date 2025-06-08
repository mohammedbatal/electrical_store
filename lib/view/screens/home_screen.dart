import 'package:electrical_store/constants.dart';
import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/view/screens/bodyScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text("مرحباً بكم بمتجر الالكترونيات",
              style: TextStyle(color: kBackgroundColor, fontSize: 30)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_outlined,
                  size: 35,
                  color: kBackgroundColor,
                ))
          ]),
      body: Bodyscreen(
        product: products[0],
      ),
    );
  }
}
