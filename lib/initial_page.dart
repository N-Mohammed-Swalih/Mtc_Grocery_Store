import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mtc_store/login_page.dart';
import 'package:mtc_store/navigation_bar.dart';

import 'home_page.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //what will happen when the page / app is  first launched
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              BottomNavBar())); //when timer completes it redirects to home
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body : Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.3,
            image: NetworkImage("https://images.unsplash.com/photo-1621956838481-f8f616950454?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
        ),
        child :const Center(
          child: Column(
            children : [
              SizedBox(
                height: 270,
              ),
                  Positioned(
                  child: Icon(Icons.shopping_cart,
                size: 100,
                color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mtc Grocery Market",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,),
                ),
            
       ] ),
      ),
      )
    );
  }
}
