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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFFFCF00),
        ),
        child: ListView (children :[
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                imagePath,
                width: 50,
                height: 50,
              ),
            ),

            // item name
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

             Material(
             shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),   
                     clipBehavior: Clip.antiAlias,  
                      color: color,
                      elevation: 5.0,  
             child : MaterialButton(
              onPressed: onPressed,      
              child: Text(
                itemPrice,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
            )
          ],
        ),
     ] ),
    ),
    );
  }
}