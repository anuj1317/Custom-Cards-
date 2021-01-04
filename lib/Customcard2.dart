import 'package:flutter/material.dart';
import 'package:custom_cards/detailpage.dart';

import 'detailpage2.dart';
class Customcard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            PageRouteBuilder(pageBuilder: (context, a, b) => Detailpage2()));
      },
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Hero(
                tag: 'background2',
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.8 * 1.33,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.blue],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 40,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.8 ),
              child: Hero(
                tag: 'image_hero2',
                child: Image.asset(
                  'assets/captain2.png',
                  scale: 3.7,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Captain America',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      letterSpacing: 2),
                ),
                Text(
                  'Click for more details',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;
    var path = Path();

    path.moveTo(0, size.height*0.33);
    path.lineTo(0, size.height-roundnessFactor);

    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);

    path.lineTo(size.width-roundnessFactor, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height-roundnessFactor);

    path.lineTo(size.width, roundnessFactor*2);

    path.quadraticBezierTo(size.width, 0,
        size.width - roundnessFactor * 3, roundnessFactor *2);
    path.lineTo(
        roundnessFactor, size.height * 0.33+42);
    path.quadraticBezierTo(
        0, size.height * 0.44+roundnessFactor, 0, size.height * 0.33 + roundnessFactor*3);




    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
