import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  BestSelling({super.key});

  var bestsellingimages = [
    "./assets/rice.png",
    "./assets/sugar.png",
    "./assets/jaggery.png",
    "./assets/chillies.png",
  ];

  var bestsellingnames = [
    'Rice',
    'Sugar',
    'Jaggery',
    'Chillies',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 150,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) => Card(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                bestsellingimages[index],
                                fit: BoxFit.contain,
                                height: 90,
                                width: 90,
                              ),
                              Text(bestsellingnames[index]),
                            ],
                          ),
                        ),
                      )),
            ),
          ),
        ],
      
    );
  }
}
