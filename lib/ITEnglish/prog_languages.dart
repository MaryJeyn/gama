import 'package:flutter/material.dart';
import 'package:lesson/ITEnglish/ITmain.dart';
import 'package:lesson/ITEnglish/language_page.dart';



class ListLang extends StatefulWidget {
  const ListLang({Key? key}) : super(key: key);

  @override
  State<ListLang> createState() => _ListLangState();
}

class _ListLangState extends State<ListLang> {
  String n = "Choose a language:";

  List items1 = ["Choose a language:","Java", "Python", "Ruby"];
  String m = "Choose a language";

  List items2 = ["Choose a language","JavaScript", "HTML", "CSS"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffD8D8D8),
      appBar:AppBar(backgroundColor: Color(0xffFF6B00),leading: InkWell(onTap:(){Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ITmain()));},
          child: Icon(Icons.arrow_back_ios)),
          centerTitle: true, title: Text ("Programming Languages", style: TextStyle(
              color: Color(0xffFDFDFC), fontWeight: FontWeight.w700,
              fontSize: 22
          ),)
      ),
      body: SingleChildScrollView(child:
      Column(children: [
        Card(
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Icon(Icons.notification_important, color:Colors.orange),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 5, bottom: 5),
                child: Text("There are numerous types of coding languages classified by methods, levels, paradigms. Let us look at most popular grouped by usability:",
                  overflow: TextOverflow.ellipsis,maxLines: 5,textAlign: TextAlign.justify,),
              ),
            ),
          ],),
        ),
        Container(height: 188, width: 335,child: Image.asset("asset2/frontback.png")),
        Card(
          child: Column (children:
        [Padding(
            padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
            child: Text("Back-End Languages",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2C2C2C))),
          ),

        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text("Back-end programming languages are used to make the server-side website not visible to user function along with various other tools & technologies such as databases, frameworks, web servers, etc. ",
            overflow: TextOverflow.ellipsis,maxLines:7,textAlign: TextAlign.justify,style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff2C2C2C))),
              ),

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
                  if (n=="Java") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Java1()));
                  }
                  else if (n=="Python") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Python()));
                  }
                  // else if (n=="Ruby") {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => Ruby()));
                  // }

                  else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ruby()));
                  }
                  ;
                });
              }),
        ),
]),),
        Card(
          child: Column (children:
          [Padding(
            padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
            child: Text("Front-End Languages",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2C2C2C))),
          ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text("The client-side, or visible parts that user interacts with: colors, fonts, the structure, design, behavior, and content are implemented with Front End languages. ",
                        overflow: TextOverflow.ellipsis,maxLines:7,textAlign: TextAlign.justify,style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2C2C2C))),
                  ),

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
                  items: items2
                      .map((e) => DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  ))
                      .toList(),
                  value: m,
                  onChanged: (check) {
                    setState(() {
                      m = check.toString();
                      if (m=="JavaScript") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Java1()));
                      }
                      else if (m=="HTML") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Java1()));
                      }
                      else if (m=="CSS") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Java1()));
                      }
                      else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Java1()));
                      }
                      ;
                    });
                  }),
            ),
          ]),),

      ],),),
    )
    );



  }
}
