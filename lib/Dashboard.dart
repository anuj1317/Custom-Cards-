import 'package:custom_cards/Customcard2.dart';
import 'package:custom_cards/Tiles.dart';
import 'package:custom_cards/customcard.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Customcard3.dart';
import 'Customcard4.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              PageRouteBuilder(pageBuilder: (context, a, b) => Tiles()));
                        },
                        child: Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/logo.png'))),
                        ),
                      ),
                      // Text(
                      //   'MARVEL',
                      //   style: TextStyle(
                      //       fontSize: 32,
                      //       fontWeight: FontWeight.bold,
                      //       letterSpacing: 1),
                      // ),
                      CarouselSlider(
                          items: [
                            Customcard(),
                            Customcard2(),
                            Customcard3(),
                            Customcard4()
                          ],
                          options: CarouselOptions(
                            height:
                                MediaQuery.of(context).size.height * 0.57 * 1.3,
                            enableInfiniteScroll: false,
                            autoPlay: true,
                            autoPlayAnimationDuration: Duration(seconds: 2),
                            autoPlayCurve: Curves.easeInCirc,
                            autoPlayInterval: Duration(seconds: 3),
                            scrollDirection: Axis.horizontal,
                            pauseAutoPlayOnTouch: true
                          )
                      ),
                    ]
                ),
              ),
            ),
          ),
        )
    );
  }
}
