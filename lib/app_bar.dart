import 'package:flutter/material.dart';

class SliverAppbarContent extends StatelessWidget {
  const SliverAppbarContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const 
        SliverAppBar(
      backgroundColor: Color(0xff01b748),
      title: Text('FARMERS FRESH ZONE'),
      titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      actions: [
        Row(
          children: [
            const Icon(Icons.location_on_outlined),
            const Text(
              'KOCHI',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_drop_down),
            )
          ],
        )
      ],
        );
  }
}