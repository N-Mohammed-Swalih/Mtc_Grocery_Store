import 'package:flutter/material.dart';
import 'package:mtc_store/colors.dart';

import 'dummy_list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductPage(),
  ));
}

class ProductPage extends StatefulWidget {
  ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final itemid = ModalRoute.of(context)?.settings.arguments;
    final listfromgroceryshop = itemlist.firstWhere(
      (element) => element['id'] == itemid,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(children: [
          Image.network(listfromgroceryshop['image'],
              width: double.infinity, height: 400, fit: BoxFit.cover),
          Positioned(
            bottom: 70,
            left: 20,
            child: Text(
              listfromgroceryshop['name'],
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Positioned(
            bottom: 36,
            left: 40,
            child: Text("8.4/85 reviews",
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ),
          Positioned(
              bottom: 30,
              right: 10,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                    color: Colors.white,
                  )))
        ]),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Text(
                        listfromgroceryshop['price'],
                        style: TextStyle(
                            color: color,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          listfromgroceryshop['location'],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        )
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Text(
                        "/Per Kg",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        backgroundColor: color),
                    child: const Text("Buy Now"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "About the product",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    listfromgroceryshop['description'],
                    style: const TextStyle(
                        fontSize: 20,
                        wordSpacing: 2,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
