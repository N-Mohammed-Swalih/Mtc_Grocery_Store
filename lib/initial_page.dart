import 'package:flutter/material.dart';
import 'package:mtc_store/signup_login_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            './assets/main.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 600,
          left: 52.5,
          width: 260,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFCF00),
              alignment: Alignment.center,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const SizedBox(
              width: 300,
              child: Center(
                child: Text(
                  "Get Started!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
