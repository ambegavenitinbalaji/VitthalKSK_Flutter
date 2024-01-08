import 'package:flutter/material.dart';
import 'package:ksk/main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  @override
  _splashScreen createState() => _splashScreen();
}

class _splashScreen extends State<splashScreen> {
  @override
  void iniiState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 150), () {});
Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Vitthal Krushi Seva Kendra')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/Images/logo.png'),
              height: 100,
              width: 100,
              color: Colors.blueAccent,
            )
          ],
        )
      ),
    );
  }
}