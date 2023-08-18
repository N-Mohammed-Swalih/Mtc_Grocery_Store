import 'package:flutter/material.dart';
import 'package:mtc_store/card_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFCF00),
          iconTheme: (IconThemeData(color: Colors.white)),
          title: Text("My Cart"),
        ),
        body: Consumer<CartModel>(builder: (context, value, child) {
          return Column(children: [
            Expanded(
                child: ListView.builder(
                    itemCount: value.cartItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFCF00),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              value.cartItems[index][2],
                              height: 36,
                            ),
                            title: Text(value.cartItems[index][0]),
                            subtitle: Text(value.cartItems[index][1]),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () =>
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeItemFromCart(index),
                            ),
                          ),
                        ),
                      );
                    })),
//total and pay now option:-
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFCF00),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.all(24),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Total Price",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Rs ${value.calculateCartPrice()}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                      //PAY NOW BUTTON
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Row(children: const [
                          Text(
                            "Pay Now",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.payment,
                            size: 20,
                            color: Colors.white,
                          ),
                        ]),
                      ),
                    ]),
              ),
            )
          ]);
        }),
      ),
    );
  }
}
