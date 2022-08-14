import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../main.dart';

class Welcom extends StatefulWidget {
  const Welcom({Key? key}) : super(key: key);

  @override
  State<Welcom> createState() => _WelcomState();
}

class _WelcomState extends State<Welcom> {
  
     @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(backgroundColor:
    Color.fromRGBO(236,42,42,1),elevation:10,shadowColor: Colors.grey, centerTitle: true, title: Text("Hoşgeldiňiz",
        style: TextStyle(fontWeight: FontWeight.w800,
            fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1))),),
      body:SingleChildScrollView(
        child: Column(children: [
          Image.asset("asset/girlpower.jpg", fit: BoxFit.contain),
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 15.0),
            child: Text("Özüňi ynamly duýmak isleýän zenanlar üçin",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w800,
                fontSize: 18, color: Colors.black87),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(children: [Icon(Icons.check_circle_outline, color: Color.fromRGBO(236,42,42,1),),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text("Özüňi howpsuz duý", textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 16, color: Colors.black87),),
            ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(children: [Icon(Icons.check_circle_outline, color: Color.fromRGBO(236,42,42,1),),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text("Özüňi gora", textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16, color: Colors.black87),),
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(children: [Icon(Icons.check_circle_outline, color: Color.fromRGBO(236,42,42,1),),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text("Hünärmenler tarapyndan taýýarlan", textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16, color: Colors.black87),),
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(children: [Icon(Icons.check_circle_outline, color: Color.fromRGBO(236,42,42,1),),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text("Gerek wagtyňyz kömek soraň", textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16, color: Colors.black87),),
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(children: [Icon(Icons.check_circle_outline, color: Color.fromRGBO(236,42,42,1),),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text("Ylham al", textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16, color: Colors.black87),),
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(350, 30),
                    primary: Color.fromRGBO(250, 250, 250, 1),
                    backgroundColor: Color.fromRGBO(236,42,42,1),
                    shadowColor: Colors.grey,elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    textStyle:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>Main()));},
                child: Text("Dowam et")),
          )

        ],),
      )
    ),);
  }
}

