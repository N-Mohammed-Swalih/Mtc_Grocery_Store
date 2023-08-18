import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
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
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
          ),
          backgroundColor: const Color(0xFFFFCF00),
          centerTitle: true,
          title: const Text('MTC Grocery Market',
              style: TextStyle(
                color: Color.fromARGB(255, 89, 79, 0),
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
      body: ListView(children: [
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
      ]),
    );
  }
}
