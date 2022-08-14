import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  String b="";
  String a="";
  String c="";
  String d="";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SingleChildScrollView(child: Column(
      children: [
        Card(elevation: 10,color: Colors.amber,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text("What two words every programmer learns to code first?", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,
                fontSize: 14, color: Colors.indigo),),
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: "morning",
                    groupValue: a,
                    onChanged: (good) {
                      debugPrint(good.toString());
                      setState(() {
                        a = good.toString();
                      });
                    },
                  ),
                  Text("Good Morning",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),

              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: "friends",
                    groupValue: a,
                    onChanged: (good) {
                      debugPrint(good.toString());
                      setState(() {
                        a = good.toString();
                      });
                    },
                  ),
                  Text("Hello, Friends",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: "world",
                    groupValue: a,
                    onChanged: (good) {
                      debugPrint(good.toString());
                      setState(() {
                        a = good.toString();
                      });
                    },
                  ),
                  Text("Hello, World",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),
            ],
          ),
        ),
        Card(elevation: 10,color: Colors.teal,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20),
                    child: Text("Who is this man?",style: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 14, color: Colors.indigo),),
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: Colors.blue,
                        value: "stev",
                        groupValue: d,
                        onChanged: (good) {
                          debugPrint(good.toString());
                          setState(() {
                            d = good.toString();
                          });
                        },
                      ),
                      Text("Steve Jobs",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(102, 102, 102, 1))),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                        activeColor: Colors.blue,
                        value: "bill",
                        groupValue: d,
                        onChanged: (good) {
                          debugPrint(good.toString());
                          setState(() {
                            d = good.toString();
                          });
                        },
                      ),
                      Text("Bill Gates",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(102, 102, 102, 1))),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: Colors.blue,
                        value: "neig",
                        groupValue: d,
                        onChanged: (good) {
                          debugPrint(good.toString());
                          setState(() {
                            d = good.toString();
                          });
                        },
                      ),
                      Text("your neighbour",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(102, 102, 102, 1))),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:70),
                child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("asset2/stevejobs.jpg", width: 150,)),
              ) ]
          ),
        ),

        Card(elevation: 10,color: Colors.deepOrangeAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text("What is the shortcut command for 'paste' ?", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 14, color: Colors.indigo),),
              ),
              Row(
                children: [
                  Radio(
                    activeColor:Colors.blue,
                    value: "ctrlc",
                    groupValue: b,
                    onChanged: (ctrl) {
                      debugPrint(ctrl.toString());
                      setState(() {
                        b = ctrl.toString();
                      });
                    },
                  ),
                  Text("Ctrl v",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),

              Row(
                children: [
                  Radio(
                    activeColor:Colors.blue,
                    value: "ctrlv",
                    groupValue: b,
                    onChanged: (ctrl) {
                      debugPrint(ctrl.toString());
                      setState(() {
                        b = ctrl.toString();
                      });
                    },
                  ),
                  Text("Ctrl d",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: "ctrld",
                    groupValue: b,
                    onChanged: (ctrl) {
                      debugPrint(ctrl.toString());
                      setState(() {
                        b = ctrl.toString();
                      });
                    },
                  ),
                  Text("Ctrl d",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),
            ],
          ),
        ),
        Card(elevation: 10,color: Colors.greenAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text("What does IT stand for?", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 14, color: Colors.indigo),),
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: "int",
                    groupValue: c,
                    onChanged: (good) {
                      debugPrint(good.toString());
                      setState(() {
                        c = good.toString();
                      });
                    },
                  ),
                  Text("Internet Technology",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),

              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: "intel",
                    groupValue: c,
                    onChanged: (good) {
                      debugPrint(good.toString());
                      setState(() {
                        c = good.toString();
                      });
                    },
                  ),
                  Text("Intelligent Technology",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: "info",
                    groupValue: c,
                    onChanged: (good) {
                      debugPrint(good.toString());
                      setState(() {
                        c = good.toString();
                      });
                    },
                  ),
                  Text("Information Technology",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1))),
                ],
              ),
            ],
          ),
        ),





      ],
    ),)));
  }
}
