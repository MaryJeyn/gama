import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ITmain.dart';
class Slangpage extends StatelessWidget {
Slangpage({Key? key}) : super(key: key);

 List<String> names = <String>["Baklava Code","Rubberducking","Jenga Code",
   "Banana banana banana", "Jimmy", "Smurf naming convention",
   "Ninja comments", "Bicrement",
 "Hot Potato/Hot Potatos"];

  List<String> defin = <String>["Code with too many layers, also known as Lasagne code.",
    "Talking with other programmers to solve a problem. ",
    "The whole program collapses once you alter a block of code.",
    "Placeholder text in code that hasn't been implemented yet.",
    "A generalized name for an inexperienced or new developer.",
    "When almost every class has the same prefix: SmurfModule.SmurfClass.apply_smurf_method.",
"Also known as invisible comments, secret comments, or no comments.",
  "Adding 2 to a variable",
"A fun way to pronounce http:// and https://."];
  List<String> pics = <String>[
    "asset2/baklava.jpg",
    "asset2/duck.jpg",
    "asset2/jenga.jpg",
    "asset2/banana.jpg",
    "asset2/geek.jpg",
    "asset2/smurf.jpg",
    "asset2/ninja.jpg",
    "asset2/2.png",
    "asset2/potato.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(backgroundColor: Color(0xffFF6B00),leading: InkWell(onTap:(){Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ITmain()));},
          child: Icon(Icons.arrow_back_ios)),
          centerTitle: true, title: Text ("IT Slang", style: TextStyle(
              color: Color(0xffFDFDFC), fontWeight: FontWeight.w700,
              fontSize: 22
          ),)
      ),
      body: ListView.builder(itemCount:names.length,itemBuilder: (BuildContext context, int index)
      {return Container(margin: EdgeInsets.all(10),width: 375, height: 130, decoration: BoxDecoration(color: Color.fromRGBO(253, 253, 252, 1),borderRadius: BorderRadiusDirectional.circular(10),
      border: Border.all(width: 3, color:Color.fromRGBO(140, 191, 86, 1),),
     ),child:Padding(
       padding: const EdgeInsets.only(left: 10.0, right: 10),
       child: Row(mainAxisAlignment:MainAxisAlignment.start,children: [
          Container(height:100,width:100, decoration: BoxDecoration(color: Color.fromRGBO(253, 253, 252, 1),borderRadius: BorderRadiusDirectional.circular(10),
            border: Border.all(width: 2, color:Color.fromRGBO(140, 191, 86, 1),),
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset(pics[index],fit: BoxFit.contain,)),),
          Container(width: 240,child:Column(children:[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(names[index],textAlign: TextAlign.start,overflow: TextOverflow.ellipsis,maxLines: 5,style: TextStyle(
                  color: Color(0xff2C2C2C), fontWeight: FontWeight.w700,
                  fontSize: 16
              ),),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(defin[index], textAlign: TextAlign.start,style: TextStyle(
                    color: Color(0xff2C2C2C), fontWeight: FontWeight.w600,
                    fontSize: 14
                ),),
              )

          ]),)

        ],),
     )

      );}
      ),
    ));
  }
}

