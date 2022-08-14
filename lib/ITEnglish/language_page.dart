import 'package:flutter/material.dart';

class Java1 extends StatelessWidget {
  const Java1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(backgroundColor: Color(0xffD8D8D8),
      appBar:AppBar(backgroundColor: Color(0xffFF6B00),leading: InkWell(onTap:(){Navigator.of(context).pop();
    },child: Icon(Icons.arrow_back_ios)),
        centerTitle: true, title: Row(children: [
          Text ("What is Java?", style: TextStyle(
              color: Color(0xffFDFDFC), fontWeight: FontWeight.w700,
              fontSize: 22
          ),),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: CircleAvatar(backgroundColor:Color(0xffFDFDFC),backgroundImage:AssetImage("asset2/java.png") ,),
            )

        ],)


          ,),
          body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5, left:15 ),
          child: Row(
  children: [
          Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
              Text("A general purpose programming language",style: TextStyle(
                color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
      ],
),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5, left:15 ),
          child: Row(
            children: [
              Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
              Text("Statically typed (must declare variables)",style: TextStyle(
                  color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5, left:15 ),
          child: Row(
            children: [
              Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
              Text("Cross-platform",style: TextStyle(
                  color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5, left:15 ),
          child: Row(
            children: [
              Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
              Text("Frameworks: Spring, Grails, Struts",style: TextStyle(
                  color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
Padding(
  padding: const EdgeInsets.only(top: 20, left:15, bottom:25 ),
  child:   Text("Used for tasks like:",style: TextStyle(
      color: Color(0xff2C2C2C), fontSize: 20, fontWeight: FontWeight.w600)),
),
        Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
          child: Chip(elevation: 10,backgroundColor:Color(0xffFCD058) ,label: Text("Web Development", style: TextStyle(
              color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
        ),
        Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
          child: Chip(elevation: 10,backgroundColor:Color(0xff8CBF56) ,label: Text("Mobile Development", style: TextStyle(
              color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
        ),
        Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
          child: Chip(elevation: 10,backgroundColor:Color(0xffFF6B00) ,label: Text("Enterprise Class Application", style: TextStyle(
              color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
        ),
        Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
          child: Chip(elevation: 10,backgroundColor:Color(0xff0DC3D4) ,label: Text("Internet of Things", style: TextStyle(
              color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 15, left: 15),
          child: Text("Used by companies like:",style: TextStyle(
              color: Color(0xff2C2C2C), fontSize: 20, fontWeight: FontWeight.w600)),
        ),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
  CircleAvatar(backgroundColor:Color(0xffFDFDFC) ,radius:50,backgroundImage:AssetImage("asset2/google.png") ,),
  CircleAvatar(backgroundColor:Color(0xffFDFDFC), radius: 50 ,backgroundImage:AssetImage("asset2/amazon.png") ,),
  CircleAvatar(backgroundColor:Color(0xffFDFDFC), radius: 50 ,backgroundImage:AssetImage("asset2/utube1.png"))

],)
      ],
       )
      ),
    )
    );
  }
}
//Python
class Python extends StatelessWidget {
  const Python({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(backgroundColor: Color(0xffD8D8D8),
          appBar:AppBar(backgroundColor: Color(0xffFF6B00),leading: InkWell(onTap:(){Navigator.of(context).pop();
          },child: Icon(Icons.arrow_back_ios)),
            centerTitle: true, title: Row(children: [
              Text ("What is Python?", style: TextStyle(
                  color: Color(0xffFDFDFC), fontWeight: FontWeight.w700,
                  fontSize: 22
              ),),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: CircleAvatar(backgroundColor:Color(0xffFDFDFC),backgroundImage:AssetImage("asset2/java.png") ,),
              )

            ],)


            ,),
          body: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("A general purpose programming language",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("Statically typed (must declare variables)",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("Cross-platform",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("Frameworks: Spring, Grails, Struts",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left:15, bottom:25 ),
                  child:   Text("Used for tasks like:",style: TextStyle(
                      color: Color(0xff2C2C2C), fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xffFCD058) ,label: Text("Web Development", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xff8CBF56) ,label: Text("Mobile Development", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xffFF6B00) ,label: Text("Enterprise Class Application", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xff0DC3D4) ,label: Text("Internet of Things", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 15, left: 15),
                  child: Text("Used by companies like:",style: TextStyle(
                      color: Color(0xff2C2C2C), fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(backgroundColor:Color(0xffFDFDFC) ,radius:50,backgroundImage:AssetImage("asset2/google.png") ,),
                    CircleAvatar(backgroundColor:Color(0xffFDFDFC), radius: 50 ,backgroundImage:AssetImage("asset2/amazon.png") ,),
                    CircleAvatar(backgroundColor:Color(0xffFDFDFC), radius: 50 ,backgroundImage:AssetImage("asset2/utube1.png"))

                  ],)
              ],
              )
          ),
        )
    );
  }
}
class Ruby extends StatelessWidget {
  const Ruby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(backgroundColor: Color(0xffD8D8D8),
          appBar:AppBar(backgroundColor: Color(0xffFF6B00),leading: InkWell(onTap:(){Navigator.of(context).pop();
          },child: Icon(Icons.arrow_back_ios)),
            centerTitle: true, title: Row(children: [
              Text ("What is Ruby?", style: TextStyle(
                  color: Color(0xffFDFDFC), fontWeight: FontWeight.w700,
                  fontSize: 22
              ),),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: CircleAvatar(backgroundColor:Color(0xffFDFDFC),backgroundImage:AssetImage("asset2/java.png") ,),
              )

            ],)


            ,),
          body: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("A general purpose programming language",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("Statically typed (must declare variables)",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("Cross-platform",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left:15 ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left, color:Color(0xff2C2C2C)),
                      Text("Frameworks: Spring, Grails, Struts",style: TextStyle(
                          color: Color(0xff2C2C2C), fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left:15, bottom:25 ),
                  child:   Text("Used for tasks like:",style: TextStyle(
                      color: Color(0xff2C2C2C), fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xffFCD058) ,label: Text("Web Development", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xff8CBF56) ,label: Text("Mobile Development", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xffFF6B00) ,label: Text("Enterprise Class Application", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 15),
                  child: Chip(elevation: 10,backgroundColor:Color(0xff0DC3D4) ,label: Text("Internet of Things", style: TextStyle(
                      color: Color(0xffFDFDFC), fontSize: 12, fontWeight: FontWeight.w600))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 15, left: 15),
                  child: Text("Used by companies like:",style: TextStyle(
                      color: Color(0xff2C2C2C), fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(backgroundColor:Color(0xffFDFDFC) ,radius:50,backgroundImage:AssetImage("asset2/google.png") ,),
                    CircleAvatar(backgroundColor:Color(0xffFDFDFC), radius: 50 ,backgroundImage:AssetImage("asset2/amazon.png") ,),
                    CircleAvatar(backgroundColor:Color(0xffFDFDFC), radius: 50 ,backgroundImage:AssetImage("asset2/utube1.png"))

                  ],)
              ],
              )
          ),
        )
    );
  }
}