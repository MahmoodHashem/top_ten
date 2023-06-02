
import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  bool isFav = false;
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _curve;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
        duration: Duration(milliseconds: 300),
        vsync: this);

    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red).animate(_controller);

    _curve = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);

    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(
            tween: Tween(begin: 30, end: 50),
            weight: 50),
        TweenSequenceItem(
            tween: Tween(begin: 50, end: 30),
            weight: 50),
      ],
    ).animate(_controller);

    _controller.addStatusListener((status) {
        if( status == AnimationStatus.completed){
          setState(() {
            isFav = true;
          });
        }
        if(status == AnimationStatus.dismissed){
          setState(() {
            isFav = false;
          });
        }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child){
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: _sizeAnimation.value,
          ),
          onPressed: () {
            isFav ? _controller.reverse() : _controller.forward();
          },
        );
      },
    );
  }
}


