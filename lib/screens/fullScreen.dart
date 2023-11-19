
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key, this.name, this.photo, this.content1,this.content2, this.link}) : super(key: key);
  final String? name;
  final String? photo;
  final String? content1;
  final String? content2;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF18C5D9), Color(0xFF4A65DC)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(3, 1),
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '$name',
              textAlign: TextAlign.center,
              style:const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'BebasNeue'),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  height: 300,
                  child: Image(
                    image: AssetImage('$photo'),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black54.withOpacity(0.7),
                          spreadRadius: 4,
                          offset: const Offset(-7, 0),
                        ),]
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.grey.shade200,
                child: ListView(
                    children: [
                      Text("$content1"),]
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.grey.shade200,
                child: ListView(
                    children: [
                      Text("$content2")
                    ]
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Back',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    GestureDetector(

                      onTap: () {
                        launchUrl(Uri.parse(link!));
                        debugPrint("Cliked");
                        // Handle tap event
                      },
                      child: const Text(
                        'Read ',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}