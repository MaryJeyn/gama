import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  List<String> pics = <String>[
    "asset/box.jpg",
    "asset/stalker.jpg",
    "asset/thief.jpg",
  ];
  List<String> names = <String>[
    "Hünär okuwyny alyň",
    "Hüjüm üçin akyl taýdan taýyn boluň",
    "Gapy açarlary ulanyň",
  ];

  List<String> defin = <String>["Aýallar (we başgalar) üçin ilkinji we iň möhüm goranmak maslahaty hünär taýýarlygydyr.",

    "Daşky gurşawyňyzdan mümkin boldugyça habarlydygyňyza göz ýetiriň. Bir ýerden başga ýere ýa-da beýleki köpçülik ýerlerinde ýöräniňizde ünsüňizi çäklendiriň. Telefonyňyza hemişe seredip durmaň. "
        "Daş-töweregiňizde eşidip biljekdigiňize göz ýetiriň. Düwmeler taýýar. Bir maksat bilen ýöräň.",

    "Öz-özüňi goramak gurallaryny ulanmak karary şahsy karar bolup, şahsy ahlaklylygyňyza, ýerli kanunlaryňyza, goranyş ýaraglarynyň ýa-da gurallarynyň elýeterliligin ýa-da bahasyna täsir edip biler, we has köp faktor. Bar zadyňyzy ulanyp bilersiňiz, meselem awtoulag açarlaryňyzy ulanmak, özüňizi goramagyň iň aňsat usullaryndan biridir. Dyrnaklaryňyzy ulanmaň, sebäbi eliňize şikes "
        "ýetmek howpy has ýokary. Munuň ýerine, gije ýöräp barýarkaňyz özüňizi howpsuz duýmasaňyz, açarlaryňyzy ýumrugyňyzyň bir gapdalyndan çykaryň.",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {Navigator.pop(context);}, ),
            backgroundColor: Color.fromRGBO(236, 42, 42, 1),
            elevation: 10,
            shadowColor: Colors.grey,
            centerTitle: true,
            title: Text("Howpsuzlyk maslahatlar",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Color.fromRGBO(255, 255, 255, 1))),
          ),
          body: ListView.builder(
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              pics[index],
                              fit: BoxFit.contain,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0, bottom: 5),
                          child: Text(
                            names[index],
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            style: TextStyle(
                                color: Color(0xff2C2C2C),
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 20),
                          child: Text(
                            defin[index],
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color(0xff2C2C2C),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        )
                      ],
                    ));
              }),
        ));
  }
}
