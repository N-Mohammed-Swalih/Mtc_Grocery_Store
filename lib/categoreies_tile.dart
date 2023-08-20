import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryItemTile extends StatelessWidget {
  final String itemName;
  final String imagePath;
  // ignore: prefer_typing_uninitialized_variables
  final color;

  CategoryItemTile({
    super.key,
    required this.itemName,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.green,
        ),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // item image
              Padding(
                padding: EdgeInsets.all(25),
                child: Image.asset(
                  imagePath,
                  width: 200,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // item name
              Text(
                itemName,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
