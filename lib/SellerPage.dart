import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductPage.dart';

// Seller page

class SellerPage extends StatefulWidget {
  const SellerPage({Key? key}) : super(key: key);

  @override
  State<SellerPage> createState() => _SellerPageState();
}

class _SellerPageState extends State<SellerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Column(children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 14, left: 20),
                  child: Text("Sahsy Hasap",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(68, 68, 68, 1))),
                ),
              ),
              Container(
                height: 150,
                width: 414,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 30, right: 20),
                      child: Image.asset(
                        "asset/kerwen.jpg",
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Kervven",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(42, 42, 42, 1))),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5, left: 70),
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductPage()));
                                    }
                                  },
                                  icon: Icon(
                                    Icons.edit_note,
                                    size: 20,
                                  ),
                                  label: Text("Uytget",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1))),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(252, 106, 3, 1)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    foregroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(255, 255, 255, 1)),
                                    minimumSize: MaterialStateProperty.all(
                                        const Size(74, 20)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text("Asgabat s.",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(68, 68, 68, 1))),
                          ),
                          Text("Şampun Head & Shoulders goňaga garşy",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(68, 68, 68, 1))),
                          Text("Okean energiýasy, 200 m",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(68, 68, 68, 1))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, bottom: 9, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Harytlar",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(68, 68, 68, 1))),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 15,
                        ),
                        label: Text("Taze haryt gos",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(153, 153, 153, 1))),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          foregroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(153, 153, 153, 1)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(55, 25)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right:20),
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        label: Icon(
                          Icons.logout,
                          size: 15,
                        ),
                        icon:  Text("Log out",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(153, 153, 153, 1))),
                                                style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          foregroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(153, 153, 153, 1)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(55, 25)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])
          ])),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                            color: Color.fromRGBO(153, 153, 153, 0.5))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Center(
                                    child: Image.asset("asset/head.jpg"))),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text("Şampun Head & ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(42, 42, 42, 1))),
                            ),
                            Text("Shoulders goňaga garşy…",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(42, 42, 42, 1))),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: Text("67.90 manat",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(252, 106, 3, 1))),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, bottom: 5, right: 10),
                                child: OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit_note,
                                      size: 20,
                                    ),
                                    label: Text("Uytget",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(68, 68, 68, 1))),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromRGBO(68, 68, 68, 1)),
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(130, 30)),
                                    ))),
                          ]),
                    ));
              },
              childCount: 6,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,
                childAspectRatio: 0.8),
          ),
        ]),
      ),
    );

    ;
  }
}
