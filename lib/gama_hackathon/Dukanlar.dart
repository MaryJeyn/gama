import 'package:flutter/material.dart';

class Dukanlar extends StatefulWidget {
  const Dukanlar({Key? key}) : super(key: key);

  @override
  State<Dukanlar> createState() => _DukanlarState();
}

class _DukanlarState extends State<Dukanlar> {
  List harytlar=["goragSerideleri/sprey.jpg","goragSerideleri/soker.jpg","goragSerideleri/fonar.png","goragSerideleri/goragBrelogy.jpg",];
  List harytlarAtlary=["Goraýjy sprey","Elektrik soker","Fonar","Gorag brelogy",];

  int harytSprey=40;
  int harytSpreySany=0;
  int harytSoker=150;
  int harytSokerSany=0;
  int harytFonar=300;
  int harytFonarsany=0;
  int harytGoragBrelogy=30;
  int harytGoragBrelogysany=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(236, 42, 42, 1),elevation:10, shadowColor: Colors.grey,centerTitle: true, title: Text("Dukanlar"),
      ),
          body:SafeArea(child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Column(
                children: [
                  Card(
                    elevation: 2,
                    shadowColor: Colors.white54,
                    child: ListTile(
                      leading: Container(
                        width: 100,
                          height:70,
                          child: Image.asset("${harytlar[0]}"),),
                      title: Text("${harytlarAtlary[0]}"),
                      subtitle: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                          children:[Text("Bahasy $harytSprey manat"),
                      Row(children:[
                        TextButton(onPressed: (){
                          harytSpreySany++;
                          setState(() {

                          });
                        }, child: Icon(Icons.add)),
                        harytSpreySany==0?Text("0"):Text("$harytSpreySany"),
                        TextButton(onPressed: (){
                          harytSpreySany>0?harytSpreySany--:harytSpreySany=0;
                          setState(() {

                          });
                        }, child: Icon(Icons.remove)),
                      ])] ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shadowColor: Colors.white54,
                    child: ListTile(
                      leading: Container(
                        width: 100,
                        height:70,
                        child: Image.asset("${harytlar[1]}"),),
                      title: Text("${harytlarAtlary[1]}"),
                      subtitle: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[Text("Bahasy $harytSoker manat"),
                        Row(children:[
                          TextButton(onPressed: (){
                            harytSokerSany++;
                            setState(() {

                            });
                          }, child: Icon(Icons.add)),
                          harytSokerSany==0?Text("0"):Text("$harytSokerSany"),
                          TextButton(onPressed: (){
                            harytSokerSany>0?harytSokerSany--:harytSokerSany=0;
                            setState(() {

                            });
                          }, child: Icon(Icons.remove)),
                        ])] ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shadowColor: Colors.white54,
                    child: ListTile(
                      leading: Container(
                        width: 100,
                        height:70,
                        child: Image.asset("${harytlar[2]}"),),
                      title: Text("${harytlarAtlary[2]}"),
                      subtitle: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[Text("Bahasy $harytFonar manat"),
                            Row(children:[
                              TextButton(onPressed: (){
                                harytFonarsany++;
                                setState(() {

                                });
                              }, child: Icon(Icons.add)),
                              harytFonarsany==0?Text("0"):Text("$harytFonarsany"),
                              TextButton(onPressed: (){
                                harytFonarsany>0?harytFonarsany--:harytFonarsany=0;
                                setState(() {

                                });
                              }, child: Icon(Icons.remove)),
                            ])] ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shadowColor: Colors.white54,
                    child: ListTile(
                      leading: Container(
                        width: 100,
                        height:70,
                        child: Image.asset("${harytlar[3]}"),),
                      title: Text("${harytlarAtlary[3]}"),
                      subtitle: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[Text("Bahasy $harytGoragBrelogy manat"),
                            Row(children:[
                              TextButton(onPressed: (){
                                harytGoragBrelogysany++;
                                setState(() {

                                });
                              }, child: Icon(Icons.add)),
                              harytGoragBrelogysany==0?Text("0"):Text("$harytGoragBrelogysany"),
                              TextButton(onPressed: (){
                                harytGoragBrelogysany>0?harytGoragBrelogysany--:harytGoragBrelogysany=0;

                                setState(() {

                                });
                              }, child: Icon(Icons.remove)),
                            ])] ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("jemi haryt:"),
                          ),
                        Text("${harytSpreySany+harytSokerSany+harytFonarsany+harytGoragBrelogysany}")
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("jemi baha:"),
                          ),
                          Text("${(harytSpreySany*harytSprey)+(harytSokerSany*harytSoker)+(harytFonarsany*harytFonar)+(harytGoragBrelogysany*harytGoragBrelogy)}")
                        ],
                      )

                    ],
                  ),
                ],
              ),
            ),
          ),),

    );
  }
}


