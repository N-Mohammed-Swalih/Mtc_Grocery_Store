import 'package:flutter/material.dart';
import 'package:mtc_store/colors.dart';

class Wishlist extends StatelessWidget {
  const Wishlist ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text("Wishlist"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("You didn't added anything to your wishlist"),
      ),
    );
  }
}