import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: const Color(0xFFFFCF00),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      ),
    );
  }
}