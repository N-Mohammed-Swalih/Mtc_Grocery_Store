import 'package:flutter/material.dart';
import 'package:mtc_store/colors.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  var icons = [
    Icons.shopping_cart,
    Icons.card_giftcard,
    Icons.wallet,
    Icons.notifications,
    Icons.language,
    Icons.privacy_tip,
    Icons.help_center,
    Icons.rate_review,
    Icons.reviews
  ];

  var title = [
    'Your Orders',
    'Vouchers',
    'Wallet',
    'Notifications',
    'Languages',
    'Privacy & Policy',
    'Help Center',
    'Rate App',
    'About App'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: color,
      title: Text('Settings'),
      centerTitle: true,
    ),
        body: ListView.builder(
            itemCount: 9,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(
                    icons[index],
                    color: Colors.black,
                  ),
                  title: Text(title[index]),
                  trailing: Icon(Icons.arrow_forward,
                  color: Colors.black,),
                ),
              );
            }));
  }
}
