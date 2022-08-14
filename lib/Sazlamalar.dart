import 'package:flutter/material.dart';
import 'package:lesson/Habarlasmak.dart';

import 'ProductPage.dart';
import 'Sargytet.dart';

//Sazlamalar Page
class Sazlamalar extends StatefulWidget {
  const Sazlamalar({Key? key}) : super(key: key);

  @override
  State<Sazlamalar> createState() => _SazlamalarState();
}

class _SazlamalarState extends State<Sazlamalar> {
  List menu1 = [
    "Dil",
    " Biz Barada",
    "Eltip bermek we tolemek",
    "Sargyt etmek",
    "Hyzmatdaslyk",
    "Ulanys duzgunleri",
    "Ulanys duzgunleri",
    "Sorag - Jogap",
    "Habarlasmak"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          body: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 14, left: 20),
                  child: Text("Sazlamalar",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                ),
              ),
              Container(
                height: 600,
                child: ListView.builder(
                    itemCount: menu1.length,
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.only(
                              top: 17.0, left: 20, bottom: 17),
                          child: GestureDetector(
                            onTap: () {
                              index == 8
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Habarlasmak()))
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProductPage()));
                            },
                            child: Material(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                child: Text("${menu1[index]}",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(85, 85, 85, 1)))),
                          ),
                        ))),
              )
            ],
          )),
    );
  }
}
