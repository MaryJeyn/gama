import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lesson/gama_hackathon/safety_tips.dart';
import 'package:lesson/gama_hackathon/yakinlar_page.dart';

class Esasy extends StatelessWidget {
  const Esasy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
          backgroundColor: Color.fromRGBO(236, 42, 42, 1),elevation:10, shadowColor: Colors.grey,
        centerTitle: true, title: Text("Dugmani basyn"),
      ),
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7, right: 8,top: 20),
                              child: Icon(
                                Icons.settings,
                                size: 20,
                              ),
                            ),
                            Text(
                              "Sazlamalar",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7, right: 8),
                              child: Icon(Icons.share, size: 20),
                            ),
                            Text(
                              "Paylasma",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7, right: 8),
                              child: Icon(Icons.feedback_outlined, size: 20),
                            ),
                            Text(
                              "Biz bilen habarlasyn",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7, right: 8),
                              child: InkWell(child: Icon(Icons.person_rounded, size: 20),
                                onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>Yakin()));},),
                            ),
                            InkWell(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>Yakin()));},
                              child: Text(
                                "Yakinlar",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7, right: 8),
                              child: InkWell(child: Icon(Icons.privacy_tip_outlined, size: 20),
                                onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>Tips()));},),
                            ),
                            InkWell(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>Tips()));},
                              child: Text(
                                "Howpsuzlyk Maslahatlary",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),



                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Center(
              child: InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Ýakynlaryňyza we polisiýa habar berildi",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 20,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: Center(
                      child: Text(
                    "SOS",
                    style: TextStyle(fontSize:30, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),);
  }
}
