import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtc_store/grocery_list.dart';
import './notification_page.dart';
import 'package:flutter/material.dart';
import './profile_page.dart';
import 'best_selling_page.dart';
import 'categories_page.dart';
import 'colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var categoryimages = [
    'assets/vegetables.png',
    'assets/fruits.png',
    'assets/packagedfoods.png',
    'assets/pulses.png',
    'assets/beverages.png',
    'assets/stationaries.png'
  ];

  var categoryname = [
    'VEGETABLES',
    'FRUITS',
    'PACKAGED FOODS',
    'FOOD GRAINS',
    'BEVERAGES',
    'STATIONARIES'
  ];

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
            backgroundColor: color,
            centerTitle: true,
            title: Text('MTC Grocery Market',
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 23)),
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
        body: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              FanCarouselImageSlider(
                sliderWidth: MediaQuery.sizeOf(context).width,
                sliderHeight: 250,
                imagesLink: sampleImages,
                imageRadius: 10,
                imageFitMode: BoxFit.fill,
                isAssets: true,
                expandImageHeight: 100,
                expandImageWidth: 200,
                autoPlay: true,
                showIndicator: false,
                isClickable: false,
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop By Category',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryList()));
                        },
                        child: Text(
                          "See all",
                          style: TextStyle(color: Colors.teal),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent:
                              MediaQuery.of(context).size.height / 5,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                        ),
                        itemBuilder: (context, index) => Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      categoryimages[index],
                                      fit: BoxFit.fill,
                                      height: 100,
                                      width: 120,
                                    ),
                                    Text(categoryname[index]),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: BestSelling()),
        ]));
  }
}
