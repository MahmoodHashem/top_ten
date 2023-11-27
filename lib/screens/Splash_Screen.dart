import 'package:flutter/material.dart';
import 'package:top_ten/main.dart';
import 'package:top_ten/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
  _navigateToHome();

  }
  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if(!mounted) return;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               //borderRadius: BorderRadius.circular(100),
               boxShadow: [
                 BoxShadow(
                   color: Colors.black.withOpacity(0.2),
                   offset: const Offset(-8, 3)
                 )
               ]
             ),
             child: const CircleAvatar(
               foregroundImage: AssetImage('images/time.jpeg',
               ),
               radius: 100,
              ),
           ),
            const SizedBox(
              height: 10,
            ),
          RichText(
            textAlign: TextAlign.center,
              text: const TextSpan(
              children: [
                TextSpan(
                    text:  '"How we',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'BebasNeue',
                        color: Colors.white
                    )

                ),
                TextSpan(
                    text:  'spend our days is',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'BebasNeue',
                        color: Colors.redAccent
                    )

                ),
                TextSpan(
                    text:  ',of course, how we ',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'BebasNeue',
                        color: Colors.white
                    )

                ),
                TextSpan(
                    text:  'spend our lives."\n',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'BebasNeue',
                        color: Colors.redAccent
                    )

                ),
                TextSpan(
                    text:  '— ANNIE DILLAR',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'BebasNeue',
                        color: Colors.white
                    )

                ),
              ]
              )),
            const SizedBox(
              height: 60,
            ),
            const CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}