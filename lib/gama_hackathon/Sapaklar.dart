import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Sapaklar extends StatefulWidget {
  const Sapaklar({Key? key}) : super(key: key);

  @override
  State<Sapaklar> createState() => _SapaklarState();
}

class _SapaklarState extends State<Sapaklar> {
  List carousel = [
    "suratlar/strongwoman1.png",
    "suratlar/strongwoman2.png",
    "suratlar/strongwoman3.png",
    "suratlar/strongwoman4.png",
    "suratlar/strongwoman5.png",
    "suratlar/strongwoman6.png",
    "suratlar/strongwoman7.png"
  ];
  List sapaklar = [
    "videolar/position1.jpg",
    "videolar/position2.jpg",
    "videolar/position3.jpg",
    "videolar/position4.jpg",
    "videolar/position5.jpg",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return CarouselSlider(
                  options: CarouselOptions(
                      height: 220, aspectRatio: 2.5, autoPlay: true),
                  items: carousel.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(i, fit: BoxFit.fill));
                      },
                    );
                  }).toList(),
                );
              }, childCount: 1),
            ),
            SliverPadding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    width: 392,
                    height: 560,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2,
                          shadowColor: Colors.white54,
                          child: ListTile(
                            leading: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset("${sapaklar[index]}"),
                            ),
                            title: Text("Sapak ${index + 1}"),
                            trailing: Icon(Icons.play_circle_outline,
                                size: 25, color: Colors.grey),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
