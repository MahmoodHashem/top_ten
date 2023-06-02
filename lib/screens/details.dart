import 'package:top_ten/model/book.dart';
import 'package:top_ten/shared/heart.dart';
import 'package:flutter/material.dart';
class Details extends StatelessWidget {

 Details({ this.book});

   var book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Hero(
                    tag: 'Cover-img-${book.img}',
                    child: Image.asset(
                      'images/${book.img}',
                      height: 300,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  )
              ),
              SizedBox(height: 30),
              ListTile(
                  title: Text(
                      book.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800]
                      )
                  ),
                  subtitle: Text(
                      book.author,
                      style: TextStyle(letterSpacing: 1)
                  ),
                  trailing: Heart()
              ),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                     'Covey explores each habit in depth and illustrates his '
                         'points by using concrete anecdotes. The book offers advice on how to embody these '
                         'traits and become more successful in personal and professional life. '
                         'The 7 Habits of Highly Effective People teaches readers how to take control of each moment '
                         'and stop wasting time on inefficient actions.',
                      style: TextStyle(
                          color: Colors.grey[600],
                          height: 1.4
                      )
                  )
              ),
            ],
          ),
        )
    );
  }
}

