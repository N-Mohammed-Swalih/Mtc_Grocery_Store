import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .5,
        height: MediaQuery.of(context).size.height * .5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: GestureDetector(
          onDoubleTap: onPressed,
          child: Stack(children: [
            Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_rounded))),
            Positioned(
              left: 10,
              right: 10,
              top: 10,
              bottom: 10,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // item image
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        imagePath,
                        width: 100,
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
                      height: 10,
                    ),
                    Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      clipBehavior: Clip.antiAlias,
                      color: color,
                      child: Text(
                        itemPrice,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    ));
  }
}
