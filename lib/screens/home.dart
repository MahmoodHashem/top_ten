
import 'package:flutter/material.dart';
import 'package:top_ten/shared/bookList.dart';
import 'package:top_ten/shared/screenTitle.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topLeft
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 190,
                  child: ScreenTitle(text: 'Top 10 Time Managnement Books'),
                ),
                Flexible(
                  child:BookList(),
                )
                //Sandbox(),
              ],
            )
        )
    );
  }
}
