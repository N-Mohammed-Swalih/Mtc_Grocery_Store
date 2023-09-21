import 'package:flutter/material.dart';
import 'package:mtc_store/dummy_list.dart';
import 'package:mtc_store/product_page.dart';

class BestSelling extends StatelessWidget {
  BestSelling({super.key});

  // var bestsellingimages = [
  //   "./assets/rice.png",
  //   "./assets/sugar.png",
  //   "./assets/jaggery.png",
  //   "./assets/chillies.png",
  // ];

  // var bestsellingnames = [
  //   'Rice',
  //   'Sugar',
  //   'Jaggery',
  //   'Chillies',
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Selling',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BestSelling()));
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
          width: MediaQuery.of(context).size.width,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: MediaQuery.of(context).size.height / 5,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
            ),
            children: itemlist
                .map(
                  (iterateditem) => Card(
                    child: GestureDetector(
                      onTap: () => gotonextpage(context, iterateditem['id']),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              iterateditem['image'],
                              fit: BoxFit.contain,
                              height: 90,
                              width: 90,
                            ),
                            Text(iterateditem['name']),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      )
    ]);
  }

  void gotonextpage(BuildContext context, iterateditemId) {
    Navigator.pushNamed(context, 'details', arguments: iterateditemId);
  }
}
