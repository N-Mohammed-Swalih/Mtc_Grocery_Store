import 'package:flutter/material.dart';
import './card_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'grocery_tile.dart';
import 'package:provider/provider.dart';



class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return    ListView(
      physics: const NeverScrollableScrollPhysics(),
      children : [
    const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Divider(),
        ),

        const SizedBox(height: 24),

        // categories -> horizontal listview
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Grocery Items",
            style: GoogleFonts.notoSerif(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),

        // recent orders -> show last 3
        Expanded(
          child: Consumer<CartModel>(builder: (context, value, child) {
            return GridView.builder(
              padding: const EdgeInsets.all(12),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: value.groceryItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.2,
              ),
              itemBuilder: (context, index) {
                return GroceryItemTile(
                  itemName: value.groceryItems[index][0],
                  itemPrice: value.groceryItems[index][1],
                  imagePath: value.groceryItems[index][2],
                  color: value.groceryItems[index][3],
                  onPressed: () =>
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index),
                );
              },
            );
          }),
      )]);
  }
}