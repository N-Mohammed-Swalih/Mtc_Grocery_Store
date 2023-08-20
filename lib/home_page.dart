import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtc_store/cart_page.dart';
import 'package:mtc_store/grocery_list.dart';
import './notification_page.dart';
import 'package:flutter/material.dart';
import './profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<String> sampleImages = [
    './assets/mega-offers.webp',
    './assets/detergents.webp',
    './assets/ashir.webp',
    './assets/cocacola.webp',
    './assets/cleaning.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.person_rounded),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('MTC Grocery Market',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 23
              )),
          actions: [
            IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()),
                  );
                })
          ]),
      body: CustomScrollView(
        slivers: [
         SliverList(
            delegate: SliverChildListDelegate(
              [
          FanCarouselImageSlider(
            sliderWidth: MediaQuery.sizeOf(context).width,
            sliderHeight: 300,
            imagesLink: sampleImages,
            imageFitMode: BoxFit.fill,
            isAssets: true,
            expandImageHeight: 100,
            expandImageWidth: 300,
            autoPlay: true,
            showIndicator: false,
            isClickable: false,
          ),
          GroceryList(),
          
        ]),
      ),
    ]));
  }
}
