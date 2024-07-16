// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:appletv_v2/components/charitem.dart';
import 'package:appletv_v2/components/comming.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
final List<String> imgList = [
  'lib/images/test.webp',
  'lib/images/test.webp',
  'lib/images/test.webp',
];
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 600.0,
          pinned: true,
          flexibleSpace: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxHeight <= 110) {
                return FlexibleSpaceBar(
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                  centerTitle: true,
                );
              }
              return FlexibleSpaceBar(
                background: Stack(
                    children: [
                      Image.asset(
                        'lib/images/thumneil.webp',
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 40,
                        left: 20,
                        right: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image(
                                      image: AssetImage(
                                          'lib/images/vector-person-icon.jpg'))),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('lib/images/icon.png', width: 170),
                            SizedBox(height: 15),
                            Text(
                              'Stream star-studded Apple Originals and more.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Accept Free Trial',
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '7 days free, then ₫179.000/month',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              );
            },
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10),
                    child: Text(
                      'Top Chart: Apple TV +',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[700],
                      size: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 160,
                width: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 15), 
                    //1
                    ChartItem(
                      title: 'Dark Matter',
                      genre: 'Sci-Fi',
                      imagePath: 'lib/images/nguoichay.webp',
                    ),
                    //2
                    ChartItem(
                      title: 'Dark Matter',
                      genre: 'Sci-Fi',
                      imagePath: 'lib/images/suydoan.webp',
                    ),
                    //3
                    ChartItem(
                      title: 'Dark Matter',
                      genre: 'Sci-Fi',
                      imagePath: 'lib/images/cogang.webp',
                    ),
                    //4
                    ChartItem(
                      title: 'Presumed Innocent',
                      genre: 'Crime',
                      imagePath: 'lib/images/ditim.webp',
                    ),
                    //5
                    ChartItem(
                      title: 'Dark Matter',
                      genre: 'Sci-Fi',
                      imagePath: 'lib/images/thegioiquaithu.webp',
                    ),
                    //6
                    ChartItem(
                      title: 'Dark Matter',
                      genre: 'Sci-Fi',
                      imagePath: 'lib/images/tamve.webp',
                    ),
                    // Add more items here
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Comming to Apple TV+',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Add to Up Next now',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 15),
                    Comming(date: '', imagePath: 'lib/images/comingup.webp'),
                    Comming(date: 'New series Premies Wednesday', imagePath: 'lib/images/timebandits.webp'),
                    Comming(date: 'New series Premies 31 July', imagePath: 'lib/images/badmoney.webp'),
                    Comming(date: 'New series Premies 27 January', imagePath: 'lib/images/theinstigatiors.webp'),
                    Comming(date: 'New series Premies 9 August', imagePath: 'lib/images/womeninblue.webp'),
                    Comming(date: 'New series Premies 27 March', imagePath: 'lib/images/timebandits.webp'),
                  ],
                ),
              ),
              
            ],
          ),
        )
      ]),
    );
  }
}
