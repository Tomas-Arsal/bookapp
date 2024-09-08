import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsBodyAppBar extends StatelessWidget {
  const BookDetailsBodyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout_outlined)),
      ],
    );
  }
}
