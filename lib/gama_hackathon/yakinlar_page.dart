import 'package:flutter/material.dart';

class Yakin extends StatefulWidget {
  const Yakin({Key? key}) : super(key: key);

  @override
  State<Yakin> createState() => _YakinState();
}

class _YakinState extends State<Yakin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {Navigator.pop(context);}, ),
                     backgroundColor:
        Color.fromRGBO(236,42,42,1),elevation:10,shadowColor: Colors.grey, centerTitle: true, title: Text("Ýakynlar",
            style: TextStyle(fontWeight: FontWeight.w800,
                fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1))),),
      body: SingleChildScrollView(
        child: Column(
          children: [
                      Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 20, bottom: 10,right: 20),
              child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                                         hintText: "+993",icon: Icon(
                    Icons.phone,
                    color: Color.fromRGBO(71, 71, 71, 1),
                  ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.black54,
                            width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.deepOrangeAccent,
                              width: 1.0)),
                      labelText: "Ýakyn 1 telefon belgisi",floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w700))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 20, bottom: 10,right: 20),
              child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.phone,
                        color: Color.fromRGBO(71, 71, 71, 1),
                      ),
                      hintText: "+993",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                              color: Colors.black54,
                              width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: Colors.deepOrangeAccent,
                              width: 1.0)),
                      labelText: "Ýakyn 2 telefon belgisi",floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w700))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 20, bottom: 10,right: 20),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(icon: Icon(
                  Icons.textsms_outlined,
                  color: Color.fromRGBO(71, 71, 71, 1),
                ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 1.0)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.deepOrangeAccent,
                            width: 1.0)),
                    labelText: "SOS Habar ugrat",
                    hintText: "Meselem: Men bärde, kömek et",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      fixedSize: const Size(200, 30),
                      primary: Color.fromRGBO(250, 250, 250, 1),
                      backgroundColor: Color.fromRGBO(236, 42, 42, 1),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                  onPressed: () {},
                  child: Text("Sakla")),
            ),
          ],
        ),
      ),
    ));
  }
}
