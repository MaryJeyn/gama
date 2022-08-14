import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/gama_hackathon/toleg_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String pay = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),appBar: AppBar(automaticallyImplyLeading: false,
          backgroundColor:
          Color.fromRGBO(236,42,42,1),elevation:10,shadowColor: Colors.grey, centerTitle: true, title: Text("Agza Bol",
              style: TextStyle(fontWeight: FontWeight.w800,
                  fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1))),),
          body: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, left: 20, bottom: 10,right: 20),
                  child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(
                                  color: Colors.black54,
                                  width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(color: Colors.deepOrangeAccent,
                                  width: 1.0)),
                          labelText: "Adynyz",
                          labelStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w700))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20, bottom: 10,right: 20),
                  child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(
                                  color: Colors.black54,
                                  width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(color: Colors.deepOrangeAccent,
                                  width: 1.0)),
                          labelText: "Familiyanyz",
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
                          hintText: "+993",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide(
                                  color: Colors.black54,
                                  width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.deepOrangeAccent,
                                  width: 1.0)),
                          labelText: "Telefon belginiz",floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w700))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20, bottom:30,right: 20),
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide(
                                  color: Colors.black54,
                                  width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(color: Colors.deepOrangeAccent,
                                  width: 1.0)),
                          labelText: "Elektron poctanyz",
                          labelStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w700))),
                ),
                  Padding(
    padding: const EdgeInsets.only(left: 20, top: 10),
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [

                Radio(
                  activeColor: Colors.redAccent,
                  value: "Nagt",
                  groupValue: pay,
                  onChanged: (nagt) {
                    debugPrint(nagt.toString());
                    setState(() {
                      pay = nagt.toString();
                    });
                  },
                ),
                Text("Nagt toleg",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54)),
                Radio(
                  activeColor: Colors.redAccent,
                  value: "Kart",
                  groupValue: pay,
                  onChanged: (kart) {
                    debugPrint(kart.toString());
                    setState(() {
                      pay= kart.toString();
                    });
                  },
                ),
                Text("Kartdan",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54)),
    ])),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              fixedSize: const Size(200, 30),
                              primary: Color.fromRGBO(250, 250, 250, 1),
                              backgroundColor: Color.fromRGBO(236, 42, 42, 1),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))),
                              textStyle:
                              TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Toleg()));},
                          child: Text("Töleg et")),
                    ],
                  ),
                ),




              ],
            ),
          ),
        ));
  }
}
