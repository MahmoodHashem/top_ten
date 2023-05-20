import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Splash_Screen.dart';
import 'package:top_ten/about.dart'; 

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splash_Screen(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _listViewData = [
    'The 7 Habits of Highly Effective People',
    '168 Hours',
    'Deep Work',
    'Eat That Frog!',
    'Essentialism',
    'Four Thousand Weeks',
    'Getting Things Done',
    'Organize Tomorrow Today',
    'The 80/20 Principle',
    'The Productivity Project',
  ];
  final photos = ['images/7Habit.jpg','images/168-hours.jpg',
    'images/Deep-work.jpg','images/eat-that-frog.jpg',
    'images/essentialism1.jpg', 'images/four-thousand-weeks.jpg',
    'images/getting-things-done.jpg', 'images/organize-tomorrow-today.jpg',
    'images/The-8020-Principle.jpg','images/the-productivity-project.jpg'];
  final contents1 = ['The 7 Habits of Highly Effective People is one of the most popular time management books of all time.'
      ' This classic highlights practices'
      ' that separate productive individuals and high achievers from the rest of the population.'
      'These seven habits are as follows: 1 - Be productive, 2 - Begin with the end in mind, '
      '3 - Put first things first, 4 - Think win/win, 5 - Seek first to understand, and then to be understood, '
      '6 - Synergize, 7 - Sharpen the saw (aka, take time to recharge)'
      ''
      'Covey explores each habit in depth and illustrates his '
      'points by using concrete anecdotes. The book offers advice on how to embody these '
      'traits and become more successful in personal and professional life. '
      'The 7 Habits of Highly Effective People teaches readers how to take control of each moment '
      'and stop wasting time on inefficient actions.',
    '168 Hours provides a framework for how to structure your days in ways that leave '
      'time to do what is important to you. Laura Vanderkam aims to overturn the myth of '
      'the time crunch, and challenges readers to clear their weekly to-do lists by '
      'prioritizing the most important tasks and offloading nonessentials. '
      'The main parts of the book explain how to structure time at home and '
      'at work to build a well-rounded, active life. 168 Hours offers a breakdown of '
      'how to best use limited time to live a fulfilling life.',
    'Deep Work is one of the best books on time management and productivity. '
      'This guide presents a masterclass in tuning out distractions and hyperfocusing.'
      ' The book explores the merits of an unflinching work ethic, and explains guidelines and training methods'
      ' for concentrating. The book’s second half lays out tips for working more efficiently, '
      'including baring boredom, blocking out social media, preventing interruptions, '
      'and achieving peak “deep work.” Deep Work is an actionable guide for learning how to focus intentionally'
      ' in a world where constant disturbances battle for our attention.',
    'Mark Twain famously said, “if it’s your job to eat a frog, '
      'it’s best to do it first thing in the morning.'
      ' And If it’s your job to eat two frogs, it’s best to eat the biggest one first.”'
      ' This book revolves around that philosophy. '
      'Brian Tracy prescribes ways to beat procrastination and gain momentum by tackling the most challenging tasks head on. The book offers tips like planning the day ahead of time, cutting big tasks into smaller chunks, '
      'reminding yourself of consequences, and using technology to your advantage.',
    'Essentialism: The Disciplined Pursuit of Less is one of the most helpful time and stress management'
        ' books. Greg McKeown advocates not for doing more, but doing what is essential. '
        'In other words, prioritizing the most critical tasks and honing in on the most important ideas.'
        ' While many folks boast about having hectic schedules, this book explains how staying busy is actually '
        'a less disciplined approach. Focusing on the right areas and committing to a singular task is more of a '
        'challenge than multitasking. Each chapter focuses on a simplifying behavior such as making decisions,'
        ' setting boundaries, and removing obstacles. Essentialism: The Disciplined Pursuit of Less '
        'is a manifesto on minimalism, self-care, and frictionless work.',
    'Four Thousand Weeks is one of the newest books about managing time. '
        'This work takes a more philosophical and spiritual approach compared to most books in the genre.'
        ' Drawing on historical evidence, psychological principles, and the musings of great thinkers, '
        'Oliver Burkeman challenges modern productivity norms and questions the quest to stay forever busy. '
        'Four Thousand Weeks reminds readers that life is short, and '
        'suggests strategies for spending time on meaningful pursuits.'
        ' The book also explains how to overcome anxiety over the uncontrollable and be more mindful '
        'of the moment instead of projecting into the future.',
    'Getting Things Done is one of the best selling time management improvement books. '
        'This edition is an updated version of the classic guide to managing tasks and mastering workflow.'
        ' The text presents organizational systems and best practices that help readers accomplish more tasks '
        'and worry less, including visuals like flow charts. '
        'The central idea of this book is that human brains can only store and focus on limited'
        ' amounts of information at one time, and tackling tasks as they come can prevent overwhelm. '
        'Acting swiftly prevents responsibilities from piling up or getting forgotten.'
        ' Getting Things Done presents a GTD system that helps readers organize workflows and '
        'react appropriately to prompts.',
    'Organize Tomorrow Today is a book that emphasizes the '
        'role mindset plays in time management. Dr. Jason Selk is a performance coach that '
        'trains top athletes and executives, and Tom Bartlow is a former college '
        'basketball coach who became a top-grossing financial advisor. '
        'The authors use their sports backgrounds to preach the mental aspects of performance. '
        'The book shows that time management is a matter of willpower and practice. '
        'Chapters cover topics such as plotting out your days, persevering through difficult times, '
        'pep-talking yourself and others, and working under pressure. One of the book’s most useful '
        'tips is to get into the habit of starting continually rather than aiming to '
        'work continuously for eight hours. Organize Tomorrow Today is a practical playbook '
        'for hardwiring your mind for productivity and long-term success.',
    'The 80/20 Principle is a manifesto for accomplishing great results with minimal effort. '
        'The 80/20 rule asserts that 80% of results come from 20% of efforts.'
        ' By this logic, the key to success is not to stay busy, but rather to invest the most energy '
        'and focus into the 20%, or the most essential priorities and tasks. '
        'The first part of the book explains the idea in depth, tracing the history and exploring '
        'related academic concepts. The middle section focuses on applying the 80/20 concept to the '
        'corporate world, and gives advice on topics like employing simple strategies '
        'and finding the right customers. The book ends with reflections on how to reduce time waste,'
        ' reclaim free time, and operate more efficiently in all aspects of life.',
    'The Productivity Project is a study that centers around finding ideal working conditions.'
        ' Over the course of a year, author Chris Bailey conducted a series of productivity experiments on '
        'himself and recorded his results. In the process, he gained valuable insights about time management,'
        ' which he is now sharing in this book. Bailey shares the actions that had the biggest impact '
        'on his output, for example, slow down and work more deliberately, and schedule less time '
        'for important tasks. The book pairs these first person experiences and observations '
        'with research and interviews with leading productivity experts.'
        ' The Productivity Project is a collection of tested techniques that serves as a reminder '
        'that work is not just about the amount of time spent, but the yields of that time.'

  ];
  final contents2 = ['Notable Quote: “But until a person can say deeply and honestly,'
      ' “I am what I am today because of the choices I made yesterday,” '
      'that person cannot say, “I choose otherwise.”',
    'Notable Quote: “Knock a few of these easy items off first, '
      'then look for ways to minimize more complicated time traps.”',
    'Notable Quote: '
      '“Efforts to deepen your focus will struggle if you don’t simultaneously wean your mind from a dependence'
      ' on distraction.”',
    'Notable Quote: “One of the very worst uses of time is'
      ' to do something very well that need not to be done at all.”',
    'Notable Quote: “Essentialists see trade-offs as an inherent part of life, '
      'not as an inherently negative part of life. Instead of asking, '
      '“What do I have to give up?” they ask, “What do I want to go big on?”',
    'Notable Quote: “The real problem isn’t our limited time. The real problem–or so I hope to convince you– '
        'is that we’ve unwittingly inherited, and feel pressured to live by, a troublesome set of ideas about '
        'how to use our limited time, all of which are pretty much guaranteed to make things worse.”',
    'Notable Quote: “If you don’t pay appropriate attention to what has your attention,'
        ' it will take more of your attention than it deserves.”',
    'Notable Quote: “Greatness is predicated on consistently doing things others '
        'can’t or won’t do. Simply put, success is not about being brilliant. '
        'It is about being consistent.”',
    'Notable Quote: “It is not shortage of time that should worry us, '
        'but the tendency for the majority of time to be spent in low-quality ways.”',
    'Notable Quote: “Busyness is no different from laziness when '
        'it doesn’t lead you to accomplish anything.”'
  ];
  final link = ['https://www.amazon.com/Habits-Highly-Effective-People-Powerful/dp/0743269519',
    'https://www.amazon.com/168-Hours-Have-More-Think/dp/159184410X',
    'https://www.amazon.com/Deep-Work-Focused-Success-Distracted/dp/1455586692',
    'https://www.amazon.com/Eat-That-Frog-Great-Procrastinating/dp/162656941X',
    'https://www.amazon.com/Essentialism-Disciplined-Pursuit-Greg-McKeown/dp/0804137382',
    'https://www.amazon.com/Four-Thousand-Weeks-Management-Mortals/dp/0374159122',
    'https://www.amazon.com/Getting-Things-Done-Stress-Free-Productivity/dp/0143126563',
    'https://www.amazon.com/Organize-Tomorrow-Today-Optimize-Performance/dp/0738219533',
    'https://www.amazon.com/80-20-Principle-Secret-Achieving/dp/0385491743',
    'https://www.amazon.com/Productivity-Project-Accomplishing-Managing-Attention/dp/1101904038'
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top Ten Time Management Books'), actions: [
        PopupMenuButton(
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.share),
                title: Text('Share the app'),
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.roundabout_right_outlined),
                title: Text('About'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                },
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Exit'),
                onTap:(){
                  SystemNavigator.pop();
                }
              ),
            ),
          ],
        ),
      ]),
      body: ListView.separated(
        itemCount: _listViewData.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FullScreen(
                name: _listViewData[index],
              photo: photos[index],
              content1: contents1[index],
              content2: contents2[index],
              link: link[index],),),);
            },
            splashColor: Colors.cyan.shade400,
            focusColor: Colors.lightBlue.shade400,
            subtitle: Text(
              '${index + 1}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.menu_book_outlined,
              color: Colors.teal.shade700,
            ),
            title: Text(_listViewData[index]),
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

class FullScreen extends StatelessWidget {
  FullScreen({Key? key, this.name, this.photo, this.content1,this.content2, this.link}) : super(key: key);
  var name;
  var photo;
  var content1;
  var content2;
  var link;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF18C5D9), Color(0xFF4A65DC)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'BebasNeue'),
                ),
              ],
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
              flex: 5,
              child: Center(
                child: Container(
                  height: 300,
                  color: Colors.transparent,
                  child: Image(
                    image: AssetImage(photo),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey.shade200,
                child: Text(content1),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey.shade200,
                child: Text(content2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Text(
                          'Back',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, color: Colors.black),
                        ),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    InkWell(
                      onTap: () {
                        launch(
                          link,
                        );
                        // Handle tap event
                      },
                      child: Container(
                        child: Text(
                          'Read ',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
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










