import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: About()
  ));
}

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  foregroundImage: AssetImage('images/mahmood.jpg'),
                ),
                Text(
                  "Mahmood Hashemi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript',
                  ),
                ),
                Text(
                  "MOBILE DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 3,
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 0),
                  color: Colors.white,
                  child: ListTile(
                    leading:Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.teal.shade500,
                    ),
                    title:Text(
                      '+93729034585',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.teal.shade800,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.email_outlined,
                      size: 15, color: Colors.teal.shade800,),
                    title: Text(
                      'shmahmoodham143@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade500,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}