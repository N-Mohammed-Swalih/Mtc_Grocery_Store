import 'package:flutter/material.dart';
import 'package:mtc_store/cart_model.dart';
import 'package:provider/provider.dart';
import 'initial_page.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App ({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create :(context) => CartModel(),
    child: 
      const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
          SplashPage(),
    ),
    );  
  }
}
