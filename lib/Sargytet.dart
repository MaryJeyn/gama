import 'package:flutter/material.dart';
//Sargyt Etmek Page

class Sargyt extends StatefulWidget {
  const Sargyt({Key? key}) : super(key: key);

  @override
  State<Sargyt> createState() => _SargytState();
}

class _SargytState extends State<Sargyt> {
  String b = "";
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
                child: Row(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_outlined,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Sargyt etmek",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(68, 68, 68, 1))),
                  )
                ]),
              )),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 20, bottom: 10, right: 20),
            child: TextField(decoration: InputDecoration(labelText: "Adyňyz")),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 20, bottom: 10, right: 20),
            child: TextField(
                decoration: InputDecoration(labelText: "Telefon belginiz")),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 20, bottom: 10, right: 20),
            child:
                TextField(decoration: InputDecoration(labelText: "Salgynyz")),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 20, bottom: 10, right: 20),
            child: TextField(decoration: InputDecoration(labelText: "Bellik")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text("Toleg gornusi:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(68, 68, 68, 1))),
                Radio(
                  activeColor: Color.fromRGBO(252, 106, 3, 1),
                  value: "Nagt",
                  groupValue: b,
                  onChanged: (nagt) {
                    debugPrint(nagt.toString());
                    setState(() {
                      b = nagt.toString();
                    });
                  },
                ),
                Text("Nagt toleg",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(102, 102, 102, 1))),
                Radio(
                  activeColor: Color.fromRGBO(252, 106, 3, 1),
                  value: "Kart",
                  groupValue: b,
                  onChanged: (kart) {
                    debugPrint(kart.toString());
                    setState(() {
                      b = kart.toString();
                    });
                  },
                ),
                Text("Kartdan",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(102, 102, 102, 1))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 100),
            child: Row(
              children: [
                Text("Jemi:  67.90 manat",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color.fromRGBO(68, 68, 68, 1))),




                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 20),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(124, 30),
                          primary: Color.fromRGBO(250, 250, 250, 1),
                          backgroundColor: Color.fromRGBO(252, 106, 3, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14)),
                      onPressed: () {},
                      child: Text("Sargyt et")),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
