// ignore_for_file: file_names

import 'package:electrical_store/constants.dart';
import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/view/screens/details_screen.dart';
import 'package:electrical_store/view/widgets/primary_contianer.dart';
import 'package:flutter/material.dart';

class Bodyscreen extends StatelessWidget {
  final Product product;
  const Bodyscreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const SizedBox(height: 20),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return PrimaryContianer(
                    index: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
