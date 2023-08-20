import 'package:flutter/material.dart';
import 'cart_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Divider(),
      ),

      const SizedBox(height: 24),

      // categories -> horizontal listview
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Text(
          "Categories",
          style: GoogleFonts.notoSerif(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),

      // recent orders -> show last 3
      Expanded(child: Consumer<CartModel>(builder: (context, value, child) {
        return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(12),
            itemCount: value.groceryItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.2,
            ),
            itemBuilder: (context, index) {

            });
      }))
    ]);
  }
}
