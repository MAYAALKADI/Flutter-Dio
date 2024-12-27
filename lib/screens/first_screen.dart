import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

import 'package:untitled17/screens/welcom_screen.dart';

// void main() {
//   runApp(MyApp());
// }

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _startSplashScreenTimer();
  }

  void _startSplashScreenTimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ImageCarousel()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // لون الخلفية
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animationController,
              child:const Text(
                'DREAM STORE',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8b0000),
                    fontFamily: 'DancingScript',
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black54,
                        offset: Offset(5.0, 5.0),
                      )
                    ]
                ),
              ),
            ),
            SizedBox(height: 20),
            //  SpinKitThreeBounce(
            //   color: Colors.white, // لون النقاط
            //   size: 30.0,
            // ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;
  final List<String> _images = [
    //'images/first1.jpg',
    'images/first2.jpg',
    'images/first3.jpg',
    'images/first4.jpg',
    'images/first5.jpg',
  ];



  void _nextImage() {
    setState(() {
      if (_currentIndex == _images.length - 1) {
        // الانتقال إلى صفحة Welcome
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomeScreen()),
        );
      } else {
        _currentIndex = (_currentIndex + 1) % _images.length;
      }
    });
  }
  // void _nextImage() {
  //   setState(() {
  //     _currentIndex = (_currentIndex + 1) % _images.length;
  //   });
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Dream Store'),
      ),
      body: Container(
        color: Colors.grey, // لون الخلفية
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(_images[_currentIndex],width: 1000,),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: _nextImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // لون الزر
                  foregroundColor: Color(0xff8b0000), // لون النص
                  shape: CircleBorder(), // شكل الزر الدائري
                  padding: EdgeInsets.all(20), // المسافات الداخلية
                ),
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}