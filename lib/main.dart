import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/Splash_Screen.dart';
import 'package:top_ten/about/about.dart';
import 'package:share_plus/share_plus.dart';
import 'package:top_ten/screens/home.dart';
import 'package:top_ten/model/library.dart';
import 'package:top_ten/screens/fullScreen.dart';
//this is a new commit
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Library library = Library();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Top Ten Time Management Books'),
          centerTitle: true,
          actions: [
           PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(
              child: ListTile(
                onTap: (){
                  Share.share(
                      'Check out Google Play to Download https://example.com',
                      subject: 'Look what I made!');
                },
                leading: const Icon(Icons.share),
                title: const Text('Share'),
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: const Icon(Icons.roundabout_right_outlined),
                title: const Text('About'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                },
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Exit'),
                onTap:(){
                  SystemNavigator.pop();
                }
              ),
            ),
          ],
        ),
      ]),
      body: ListView.separated(
        itemCount: library.booksNames.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FullScreen(
                name: library.booksNames[index],
              photo: library.photos[index],
              content1: library.contents1[index],
              content2: library.contents2[index],
              link: library.link[index],),),);
            },
            splashColor: Colors.cyan.shade400,
            focusColor: Colors.lightBlue.shade400,
            subtitle: Text(
              '${index + 1}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.menu_book_outlined,
              color: Colors.teal.shade700,
            ),
            title: Text(library.booksNames[index]),
            trailing: Icon(Icons.keyboard_arrow_right),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[400],
            height: 1,
            thickness: 1,
          );
        },
      ),
    );
  }
}












