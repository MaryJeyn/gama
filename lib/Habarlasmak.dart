import 'package:flutter/material.dart';

class Habarlasmak extends StatefulWidget {
  const Habarlasmak({Key? key}) : super(key: key);

  @override
  State<Habarlasmak> createState() => _HabarlasmakState();
}

class _HabarlasmakState extends State<Habarlasmak> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
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
                      child: Text("Habarlasmak",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(68, 68, 68, 1))),
                    )
                  ]),
                )),
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 82, bottom: 10, right: 82),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Adyňyz",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 82, bottom: 10, right: 82),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Telefon belginiz",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 82, bottom: 10, right: 82),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Elektron poctanyz",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 82, bottom: 10, right: 82),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    labelText: "Hatynyz",
                    alignLabelWithHint: true,
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      fixedSize: const Size(250, 30),
                      primary: Color.fromRGBO(250, 250, 250, 1),
                      backgroundColor: Color.fromRGBO(252, 106, 3, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                  onPressed: () {},
                  child: Text("Ugrat")),
            ),
          ],
        ),
      ),
    ));
  }
}
