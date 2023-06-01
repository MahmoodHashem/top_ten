import 'package:flutter/material.dart';
import 'package:top_ten/main.dart';
import 'package:top_ten/screens/home.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  void initState(){
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(
        Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Home() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Stack(
          children: [
            Image.asset('images/time.jpeg'),
            Container(
              child: Text('How we spend our days is, of course, how we spend our lives.\n—ANNIE DILLAR',
              style: TextStyle(
                fontSize: 80,
                fontFamily: 'BebasNeue',
                color: Colors.white
              ),),
            ),
          ],
        ),
      ),
    );
  }
}