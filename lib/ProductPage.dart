import 'package:flutter/material.dart';

//ProductPage(byUser)

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String n = "Arassacylyk / Sampunlar";

  List items1 = ["Arassacylyk / Sampunlar", "Sabynlar", "Diş saglygy"];

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
                      child: Text("Sargyt etmek",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(68, 68, 68, 1))),
                    )
                  ]),
                )),
            Image.asset("asset/clear.jpg"),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5),
              child: Center(
                  child: OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_note,
                  size: 20,
                ),
                label: Text("Uytget",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(68, 68, 68, 1))),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                  foregroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(68, 68, 68, 1)),
                  minimumSize: MaterialStateProperty.all(const Size(130, 20)),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Ady",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 20, bottom: 10, right: 20),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Şampun Head & Shoulders goňaga garşy…",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(68, 68, 68, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.only(top: 5, bottom: 5))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Gosmaca maglumat",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 20, bottom: 10, right: 20),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Sampun Sampun",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(68, 68, 68, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.only(top: 5, bottom: 5))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Kategoriya",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 20, bottom: 10, right: 20),
              child: DropdownButton(
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Color.fromRGBO(68, 68, 68, 1),
                  ),
                  style: TextStyle(
                      color: Color.fromRGBO(68, 68, 68, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  items: items1
                      .map((e) => DropdownMenuItem<String>(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  value: n,
                  onChanged: (check) {
                    setState(() {
                      n = check.toString();
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Bahasy",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 20, bottom: 10, right: 20),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                        decoration: InputDecoration(
                            labelText: "67.90",
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(68, 68, 68, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            contentPadding:
                                EdgeInsets.only(top: 5, bottom: 5))),
                  ),
                  Text("manat",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Arzanladys",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 20, bottom: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                        decoration: InputDecoration(
                            labelText: "15",
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(68, 68, 68, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            contentPadding:
                                EdgeInsets.only(top: 5, bottom: 5))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10.0, bottom: 0),
                    child: Text("%",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(102, 102, 102, 1))),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: Size(181, 30),
                          primary: Color.fromRGBO(250, 250, 250, 1),
                          backgroundColor: Color.fromRGBO(252, 106, 3, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14)),
                      onPressed: () {},
                      child: Text("Yatda sakla")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 15, bottom: 20),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: Size(181, 30),
                          primary: Color.fromRGBO(250, 250, 250, 1),
                          backgroundColor: Color.fromRGBO(252, 3, 3, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14)),
                      onPressed: () {},
                      child: Text("Poz")),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
