import 'package:flutter/material.dart';
import 'cart_model.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'grocery_tile.dart';
import 'package:provider/provider.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      // categories -> horizontal listview
      const Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          "Best Selling",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      //  show the items
      Expanded(
        child: Consumer<CartModel>(builder: (context, value, child) {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            itemCount: value.groceryItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return GroceryItemTile(
                itemName: value.groceryItems[index][0],
                itemPrice: value.groceryItems[index][1],
                imagePath: value.groceryItems[index][2],
                color: value.groceryItems[index][3],
                onPressed: () => Provider.of<CartModel>(context, listen: false)
                    .addItemToCart(index),
              );
            },
          );
        }),
      )
    ]);
  }
}
