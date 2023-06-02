
import 'package:flutter/material.dart';
import 'package:top_ten/model/book.dart';
import 'package:top_ten/screens/details.dart';

class BookList extends StatefulWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {

  List<Widget> _bookTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addBook();
  }

  void _addBook() {
    // get data from db
    List<Book> _books= [
      Book(title: '7 Habits of Highly effective people', author: 'Stepen R.covey', img: '7Habit.jpg'),
      Book(title: '168 Hours', author: 'Laura Naderkam', img: '168-hours.jpg'),
      Book(title: 'Deep Work', author: 'Cal Newport', img: 'Deep-work.jpg'),
      Book(title: 'Eat That Frog', author: 'Brian Tracy', img: 'eat-that-frog.jpg'),
      Book(title: 'Essentialism', author: 'Greg Mckeown', img: 'essentialism1.jpg'),
      Book(title: 'Four Thousand Weeks', author: 'Oliver Burkeman', img: 'four-thousand-weeks.jpg'),
      Book(title: 'Getting Things Done', author: 'David Allen', img: 'getting-things-done.jpg'),
      Book(title: 'Organize Tomorrow Today', author: 'Jason Silk and Tom Bortow with Mathew Rudy', img: 'organize-tomorrow-today.jpg'),
      Book(title: 'The 80/20 Principle ', author: 'Richard Koch', img: 'the-8020-Principle.jpg'),
      Book(title: 'The Productivity Project', author: 'Chris Bailey ', img: 'the-productivity-project.jpg'),
    ];

    _books.forEach((Book book) {
      _bookTiles.add(_buildTile(book));
    });
  }

  Widget _buildTile(Book book) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(book: book)));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(book.title, style: TextStyle(fontSize: 20, color: Colors.grey[600])),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'Cover-img-${book.img}',
          child: Image.asset(
            'images/${book.img}',
            height: 50.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _bookTiles.length,
        itemBuilder: (context, index) {
      return _bookTiles[index];
    }
    );
  }
}
