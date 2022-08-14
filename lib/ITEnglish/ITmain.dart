import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/avd.dart';
import 'package:lesson/ITEnglish/prog_languages.dart';

class ITmain extends StatefulWidget {
  const ITmain({Key? key}) : super(key: key);

  @override
  State<ITmain> createState() => _ITmainState();
}

class _ITmainState extends State<ITmain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 10, right: 10),
              child: Container(
                height: 40,
                width: 335,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(224, 222, 222, 1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 0))
                    ],
                    color: Color.fromRGBO(224, 224, 224, 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Search",
                          style: TextStyle(
                              color: Color.fromRGBO(57, 62, 70, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.search,
                          color: Color.fromRGBO(57, 62, 70, 1)),
                    ),
                  ],
                ),
              ),
            ),
            CarouselSlider(
                items: [
                  Container(
                    height: 188, width: 335,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("asset2/green.jpg"),
                            fit: BoxFit.contain)),
                    child: Column(
                      children: [
                        Text(
                            "Everyone should know how to program a computer, because it teaches you how to think!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        Text("-Steve Jobs",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    //
                  ),
                  Container(
                    height: 188,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          "asset2/code2.jpg",
                          fit: BoxFit.contain,
                        ),
                        Text(
                            "Everyone should know how to program a computer, because it teaches you how to think!")
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                )
                // viewportFraction: 0.8,)
                ),
            Container(
              height: 350,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      color: Color.fromRGBO(245, 182, 7, 1),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 50, right: 50, bottom: 15),
                            child: Image.asset(
                              "asset2/worker.png",
                            ),
                          ),
                          const Text(
                            "IT Careers",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(57, 62, 70, 1)),
                          ),
                        ],
                      )),
                  InkWell(onTap:(){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListLang()));},
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(20)),
                        color: Color.fromRGBO(13, 195, 212, 1),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 25, left: 50, right: 50, bottom: 15),
                              child: Image.asset(
                                "asset2/language.png",
                              ),
                            ),
                            const Text(
                              "Programming languages",textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(57, 62, 70, 1)),
                            ),
                          ],
                        )),
                  ),
                  Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      color: Color.fromRGBO(140, 191, 86, 1),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 50, right: 50, bottom: 15),
                            child: Image.asset(
                              "asset2/dictionary.png",
                            ),
                          ),
                          const Text(
                            "IT Vocabulary",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(57, 62, 70, 1)),
                          ),
                        ],
                      )),
                  Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      color: Color(0xffF05634),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 50, right: 50, bottom: 15),
                            child: Image.asset(
                              "asset2/foul.png",
                            ),
                          ),
                          const Text(
                            "IT Slang",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(57, 62, 70, 1)),
                          ),
                        ],
                      )),
                  Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      color: Color(0xffFD695D),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 50, right: 50, bottom: 15),
                            child: Image.asset(
                              "asset2/developer.png",
                            ),
                          ),
                          const Text(
                            "Abbrreviations",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(57, 62, 70, 1)),
                          ),
                        ],
                      )),
                  Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      color: Color(0xff9A5FF9),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 50, right: 50, bottom: 15),
                            child: Image.asset(
                              "asset2/skills.png",
                            ),
                          ),
                          const Text(
                            "Skills",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(57, 62, 70, 1)),
                          ),
                        ],
                      )),
                ],
              ),
            ),
BottomNavigationBar(
  type: BottomNavigationBarType.shifting,
    backgroundColor: Color.fromRGBO(0, 0, 0,0.25),
    selectedItemColor: Color(0xffF05634),
    unselectedItemColor: Color(0xff2C2C2C),
    selectedFontSize: 14,
    unselectedFontSize: 12,
    onTap: (value){},
    items: [BottomNavigationBarItem(label:"Home",icon: Icon(Icons.home_outlined)),
      BottomNavigationBarItem(label:"Language",icon: Icon(Icons.language_outlined)),
      BottomNavigationBarItem(label:"Add",icon: Icon(Icons.add_circle_outline)),
      BottomNavigationBarItem(label:"Shop",icon: Icon(Icons.shopping_cart_outlined)),
    ],
)

          ],
        )),
      ]),
    ));
  }
}
