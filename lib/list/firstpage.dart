
// import 'package:flutter/material.dart';

// //Sazlamalar Page
// class Sazlamalar extends StatefulWidget {
//   const Sazlamalar({Key? key}) : super(key: key);
//
//   @override
//   State<Sazlamalar> createState() => _SazlamalarState();
// }
//
// class _SazlamalarState extends State<Sazlamalar> {
//   List menu1 = ["Dil", " Biz Barada", "Eltip bermek we tolemek", "Sargyt etmek", "Hyzmatdaslyk",
//   "Ulanys duzgunleri", "Ulanys duzgunleri", "Sorag - Jogap", "Habarlasmak"];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//       body:Column(
//         children: [
//          Container(
//            height:50, width: MediaQuery.of(context).size.width,decoration: BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1)),
//            child: Padding(
//              padding: const EdgeInsets.only(top:14, bottom: 14, left:20),
//              child: Text("Sazlamalar", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//            ),
//          ),
//           Container(height: 600,
//             child: ListView.builder(itemCount:menu1.length,itemBuilder: ((context, index) =>
//                 Padding(
//                   padding: const EdgeInsets.only(top:17.0, left: 20, bottom: 17),
//                   child: GestureDetector(onTap: ()
//                   {index==3?Navigator.push(context, MaterialPageRoute(builder: (context)=>
//                       Sargyt())):Navigator.push(context, MaterialPageRoute(builder: (context)=>
//                       Seller()));},
//                     child: Material(color: Color.fromRGBO(255, 255, 255, 1),child: Text("${menu1[index]}",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,
//                         color: Color.fromRGBO(85, 85, 85, 1)))),
//                   ),
//                 ))),
//           )
//
//
//         ],
//       )
//     ),
//
//     );
//   }
// }
//
// //Sargyt Etmek Page
//
// class Sargyt extends StatefulWidget {
//   const Sargyt({Key? key}) : super(key: key);
//
//   @override
//   State<Sargyt> createState() => _SargytState();
// }
//
// class _SargytState extends State<Sargyt> {
//   String b="";
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child:Scaffold(backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//     body:Column(
//       children: [
//         Container(height:50, width:MediaQuery.of(context).size.width,decoration: BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1)),
//         child:Padding(
//           padding: const EdgeInsets.only(top: 14, bottom: 14, left:20),
//           child: Row(children: [
//               GestureDetector(onTap:() {Navigator.pop(context);},
//                   child: Icon(Icons.arrow_back_ios_outlined, color: Color.fromRGBO(68, 68, 68, 1))),
//               Padding(
//                 padding: const EdgeInsets.only(left:20.0),
//                 child: Text("Sargyt etmek", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//               )]),
//         )),
//           Padding(
//             padding: const EdgeInsets.only(top:10.0, left: 20, bottom:10, right:20),
//             child: TextField(decoration: InputDecoration(
//                 labelText: "Adyňyz")),),
//         Padding(
//           padding: const EdgeInsets.only(top:10.0, left: 20, bottom:10, right:20),
//           child: TextField(decoration: InputDecoration(
//               labelText: "Telefon belginiz")),),
//         Padding(
//           padding: const EdgeInsets.only(top:10.0, left: 20, bottom:10, right:20),
//           child: TextField(decoration: InputDecoration(
//               labelText: "Salgynyz")),),
//         Padding(
//           padding: const EdgeInsets.only(top:10.0, left: 20, bottom:10, right:20),
//           child: TextField(decoration: InputDecoration(
//               labelText: "Bellik")),),
//       Padding(
//         padding: const EdgeInsets.only(left: 20, top: 20),
//         child: Row(children: [
//           Text("Toleg gornusi:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,  color: Color.fromRGBO(68, 68, 68, 1))),
//         Radio(activeColor: Color.fromRGBO(252, 106, 3, 1),
//           value:"Nagt",groupValue: b,onChanged: (nagt)
//         {debugPrint(nagt.toString());setState(() {
//           b=nagt.toString();
//         }); },),
//           Text("Nagt toleg", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color:Color.fromRGBO(102, 102, 102, 1))),
//           Radio(activeColor: Color.fromRGBO(252, 106, 3, 1),
//             value:"Kart",groupValue: b,onChanged: (kart)
//               {debugPrint(kart.toString());setState(() {
//                 b=kart.toString();
//               }); },),
//             Text("Kartdan", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color:Color.fromRGBO(102, 102, 102, 1))),
//                 ],),
//       ),
//         Padding(
//           padding: const EdgeInsets.only(left:20, top:100),
//           child: Row(children: [
//             Text("Jemi:  67.90 manat", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14,color: Color.fromRGBO(68, 68, 68, 1) )),
//       Padding(
//         padding: const EdgeInsets.only(left: 100),
//         child: OutlinedButton(style: OutlinedButton.styleFrom(primary: Color.fromRGBO(250, 250, 250, 1),
//         backgroundColor: Color.fromRGBO(252, 106, 3, 1),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
//         textStyle:TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),onPressed: (){}, child: Text("Sargyt et")),
//       ),
//
//           ],),
//         )
//       ],
//     )
//       ,));
//   }
// }
//
// //ProductPage(byUser)
//
// class Seller extends StatefulWidget {
//   const Seller({Key? key}) : super(key: key);
//
//   @override
//   State<Seller> createState() => _SellerState();
// }
//
// class _SellerState extends State<Seller> {
// String n="Arassacylyk / Sampunlar";
//
//   List items1=["Arassacylyk / Sampunlar", "Sabynlar","Diş saglygy" ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(height:50, width:MediaQuery.of(context).size.width,decoration: BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1)),
//               child:Padding(
//                 padding: const EdgeInsets.only(top: 14, bottom: 14, left:20),
//                 child: Row(children: [
//                   GestureDetector(onTap: (){
//               Navigator.pop(context);
//               },child: Icon(Icons.arrow_back_ios_outlined, color: Color.fromRGBO(68, 68, 68, 1))),
//                   Padding(
//                     padding: const EdgeInsets.only(left:20.0),
//                     child: Text("Sargyt etmek", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//                   )]),
//               )),
// Image.asset("asset/clear.jpg"),
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0, bottom: 5),
//             child: Center(child:OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.edit_note, size: 20,), label:Text("Uytget",
//               style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Color.fromRGBO(68, 68, 68, 1))),
//             style:ButtonStyle(
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
//               foregroundColor: MaterialStateProperty.all(Color.fromRGBO(68, 68, 68, 1)),minimumSize: MaterialStateProperty.all(const Size(130,20)),
//             ),
//             )),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left:20, top: 5, bottom: 0),
//             child: Row(mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text("Ady", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//               ], ), ),
//           Padding(
//             padding: const EdgeInsets.only(top:0, left: 20, bottom:10, right:20),
//             child: TextField(decoration: InputDecoration(
//                 labelText: "Şampun Head & Shoulders goňaga garşy…", labelStyle:TextStyle(
//               color: Color.fromRGBO(68, 68, 68, 1), fontSize: 12, fontWeight: FontWeight.w500),
//             contentPadding: EdgeInsets.only(top: 5, bottom: 5))),),
//           Padding(
//             padding: const EdgeInsets.only(left:20, top: 5, bottom: 0),
//             child: Row(mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text("Gosmaca maglumat", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//               ], ), ),
//           Padding(
//             padding: const EdgeInsets.only(top:0, left: 20, bottom:10, right:20),
//             child: TextField(decoration: InputDecoration(
//                 labelText: "Sampun Sampun", labelStyle:TextStyle(
//                 color: Color.fromRGBO(68, 68, 68, 1), fontSize: 12, fontWeight: FontWeight.w500),
//                 contentPadding: EdgeInsets.only(top: 5, bottom: 5))),),
//           Padding(
//             padding: const EdgeInsets.only(left:20, top: 5, bottom: 0),
//             child: Row(mainAxisAlignment: MainAxisAlignment.start, // Padding(
//               //   padding: const EdgeInsets.only(top:0, left: 20, bottom:10, right:20),
//               //   child: TextField(decoration: InputDecoration(
//               //       labelText: "Arassacylyk / Sampunlar", labelStyle:TextStyle(
//               //       color: Color.fromRGBO(68, 68, 68, 1), fontSize: 12, fontWeight: FontWeight.w500),
//               //       contentPadding: EdgeInsets.only(top: 5, bottom: 5)),),),
//               children: [
//                 Text("Kategoriya", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//               ], ), ),
//
//           DropdownButton(isExpanded:true,
//               items: items1.map((e) =>DropdownMenuItem<String>
//             (child: Text(e), value:e,)).toList(),value: n,
//                onChanged: (check){setState(() {
//                  n=check.toString();
//                });}),
//           Padding(
//             padding: const EdgeInsets.only(left:20, top: 5, bottom: 0),
//             child: Row(mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text("Bahasy", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//               ], ), ),
//           Padding(
//             padding: const EdgeInsets.only(top:0, left: 20, bottom:10, right:20),
//             child: Row(
//               children: [
//                 Container(width:300,
//                   child: TextField(decoration: InputDecoration(
//                       labelText: "67.90", labelStyle:TextStyle(
//                       color: Color.fromRGBO(68, 68, 68, 1), fontSize: 12, fontWeight: FontWeight.w500),
//                       contentPadding: EdgeInsets.only(top: 5, bottom: 5))),
//                 ),
//                 Text("manat", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Color.fromRGBO(102, 102, 102, 1))), ],
//             ),),
//           Padding(
//             padding: const EdgeInsets.only(left:20, top: 5, bottom: 0),
//             child: Row(mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text("Arzanladys", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//               ], ), ),
//           Padding(
//             padding: const EdgeInsets.only(top:0, left: 20, bottom:10, right:20),
//             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(width:300,
//                   child: TextField(decoration: InputDecoration(
//                       labelText: "15", labelStyle:TextStyle(
//                       color: Color.fromRGBO(68, 68, 68, 1), fontSize: 12, fontWeight: FontWeight.w500),
//                       contentPadding: EdgeInsets.only(top: 5, bottom: 5))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only( left:10, right: 10.0, bottom: 0),
//                   child: Text("%", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Color.fromRGBO(102, 102, 102, 1))),
//                 ),
//               ],
//             ),),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 20,top: 15, bottom: 20),
//                 child: OutlinedButton(style: OutlinedButton.styleFrom(fixedSize: Size(181,30),primary: Color.fromRGBO(250, 250, 250, 1),
//                     backgroundColor: Color.fromRGBO(252, 106, 3, 1),
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
//                     textStyle:TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),onPressed: (){}, child: Text("Yatda sakla")),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left:5, top: 15, bottom: 20),
//                 child: OutlinedButton(style: OutlinedButton.styleFrom(fixedSize: Size(181,30),primary: Color.fromRGBO(250, 250, 250, 1),
//                     backgroundColor: Color.fromRGBO(252, 3, 3, 1),
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
//                     textStyle:TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),onPressed: (){}, child: Text("Poz")),
//               ),
//             ],
//           ),
//
//
//         ],
//       ),
//     )
//       ,));
//   }
// }
//
// // Seller page
//
// class Sahsy extends StatefulWidget {
//   const Sahsy({Key? key}) : super(key: key);
//
//   @override
//   State<Sahsy> createState() => _SahsyState();
// }
//
// class _SahsyState extends State<Sahsy> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//     body:Column(
//     children: [
//     Container(
//     height:50, width: MediaQuery.of(context).size.width,decoration: BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1)),
//     child: Padding(
//     padding: const EdgeInsets.only(top:14, bottom: 14, left:20),
//     child: Text("Sahsy Hasap", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//     ),
//     ),
//     Container(height: 150, width: 414,
//       child: Row(children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 15, left: 30, right: 20),
//           child: Image.asset("asset/kerwen.jpg", width:80, height:80,),
//         ),
//         Container(
//           child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
//             Row(children: [Text("Kervven", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(42, 42, 42, 1))),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10.0, bottom: 5, left: 70),
//                 child: OutlinedButton.icon(onPressed: () {
//                   {Navigator.push(context, MaterialPageRoute(builder: (context)=>
//                       Seller()));}
//                 }, icon: Icon(Icons.edit_note, size: 20,), label:Text("Uytget",
//                     style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Color.fromRGBO(255, 255, 255, 1))),
//                   style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(252, 106, 3, 1)),
//                     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
//                     foregroundColor: MaterialStateProperty.all(Color.fromRGBO(255, 255, 255, 1)),minimumSize: MaterialStateProperty.all(const Size(74,20)),
//                   ),
//                 ),
//               ),
//             ],),
//             Padding(
//               padding: const EdgeInsets.only(top:10, bottom: 10),
//               child: Text("Asgabat s.",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color.fromRGBO(68, 68, 68, 1))),
//             ),
//             Text("Şampun Head & Shoulders goňaga garşy",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(68, 68, 68, 1))),
//               Text("Okean energiýasy, 200 m", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(68, 68, 68, 1))),
//           ],),
//         ),
//       ],),
//     ),
//             Padding(
//               padding: const EdgeInsets.only(top:9, bottom:9, left:15),
//               child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
//                 Text("Harytlar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(68, 68, 68, 1))),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30),
//                   child: OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.add, size: 15,), label:Text("Taze haryt gos",
//                       style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600, color: Color.fromRGBO(153, 153, 153, 1))),
//                     style:ButtonStyle(
//                       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
//                       foregroundColor: MaterialStateProperty.all(Color.fromRGBO(153, 153, 153, 1)),minimumSize: MaterialStateProperty.all(const Size(55,25)),
//                     ), ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left:50),
//                   child: OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.logout, size: 15,), label:Text("Log out",
//                       style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600, color: Color.fromRGBO(153, 153, 153, 1))),
//                     style:ButtonStyle(
//                       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
//                       foregroundColor: MaterialStateProperty.all(Color.fromRGBO(153, 153, 153, 1)),minimumSize: MaterialStateProperty.all(const Size(55,25)),
//                     ), ),
//                 ),
//
//               ],),
//             ),
//
//         Container(
//           height: 400,
//           child: GridView.builder(itemCount:10, shrinkWrap: true,scrollDirection: Axis.vertical,
//            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 15, mainAxisExtent: 260),
//            itemBuilder: (BuildContext context, int index){
//              return Padding(
//                padding: const EdgeInsets.only(top: 10, left: 10, right: 5, bottom: 10),
//                child: Container(height:238, width: 190,
//                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color:Color.fromRGBO(153, 153, 153, 0.5))),
//                  child: Column(mainAxisAlignment:MainAxisAlignment.start,
//                      children: [Image.asset("asset/head.jpg"),
//                        Padding(
//                          padding: const EdgeInsets.only(left:10, top: 20),
//                          child: Text("Şampun Head & ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(42, 42, 42, 1))),
//                        ),
//                  Text("Shoulders goňaga garşy…", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(42, 42, 42, 1))),
//                    Padding(
//                      padding: const EdgeInsets.only(top:10,left:20),
//                      child: Text("67.90 manat", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color.fromRGBO(252, 106, 3, 1))),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(top: 5.0, bottom: 5),
//                      child: Center(child:OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.edit_note, size: 20,), label:Text("Uytget",
//                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color.fromRGBO(68, 68, 68, 1))),
//                        style:ButtonStyle(
//                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
//                          foregroundColor: MaterialStateProperty.all(Color.fromRGBO(68, 68, 68, 1)),
//                          minimumSize: MaterialStateProperty.all(const Size(130,30)),
//                        ),
//                      )),
//                    ),
//
//
//                      ]),
//                ),
//              );}
//            ),
//         ),
//
//
//     ])))
//
//     ;
//   }
// }


//       // Homework market
//       // ( appBar:AppBar(backgroundColor: Colors.white, elevation: 0,
//           leading: Center(
//             child: Container(height:40, width:40,
//                 decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10) ),
//                 child: Icon(Icons.arrow_back_ios_outlined, color: Colors.black)),
//           ),
//       title:Text("Cart", style: TextStyle(color: Colors.black),)),
//         body:  Liste(),
//         bottomNavigationBar: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children:[Icon(Icons.home), Icon(Icons.wysiwyg), Icon(Icons.heart_broken),
//         Icon(Icons.shopping_cart), Icon(Icons.person)]),
//   )));
// }
//
// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // body: Padding(
//           padding: const EdgeInsets.only(top: 30),
//           child: Column(children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CircleAvatar(radius: 15, child: Icon(Icons.person)),
//                 Text("ЧАТЫ",
//                     style: TextStyle(
//                         color: Colors.blue,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600)),
//                 Container(
//                     child: Row(children: [
//                   Text("ОБЗОР",
//                       style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600)),
//                   Icon(Icons.circle, size: 10, color: Colors.green)
//                 ])),
//                 Text("КОНТАКТЫ",
//                     style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600)),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Divider(height: 2, thickness: 0, color: Colors.grey),
//             ),
//             Column(children: [
//               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       top: 5, left: 30, right: 30, bottom: 5),
//                   child: CircleAvatar(
//                       radius: 30,
//                       backgroundColor: Colors.grey[200],
//                       child: Icon(
//                         Icons.add_a_photo_rounded,
//                         color: Colors.grey,
//                       )),
//                 ),
//                 CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.grey[200],
//                     child: CircleAvatar(
//                         radius: 28,
//                         backgroundImage: AssetImage("asset/phone.jpg"))),
//                 CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.grey[200],
//                     child: CircleAvatar(
//                         radius: 28,
//                         backgroundImage: AssetImage("asset/1.jpg"))),
//                 CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.grey[200],
//                     child: CircleAvatar(
//                         radius: 28,
//                         backgroundImage: AssetImage("asset/banner.jpg"))),
//               ]),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text("Добавить историю",
//                       style: (TextStyle(fontSize: 12, color: Colors.grey))),
//                   Text("PhoneShop",
//                       style: (TextStyle(fontSize: 12, color: Colors.black))),
//                   Text("Ynamdar",
//                       style: (TextStyle(fontSize: 12, color: Colors.black))),
//                   Text("Arzanal",
//                       style: (TextStyle(fontSize: 12, color: Colors.black))),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10),
//                 child: Divider(height: 2, thickness: 0, color: Colors.grey),
//               ),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/daisy.jpg")),
//                     title: Text("Guncha Meredowa",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Фото  6:31 ПП"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/house1.jpg")),
//                     title: Text("Realtor Ashyr",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Фото  Вчера"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/jag.jpg")),
//                     title: Text("LachynA.",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Privet, kak dela?"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/butterfly1.jpg")),
//                     title: Text("Mamajan",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Iki sany çörek al  10:18 ДП"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/flutter1.png")),
//                     title: Text("Mobile_Deý two",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Çontainerin içinde row...  вс"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/trend.png")),
//                     title: Text("Emin Trendyol",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("zakazynyz geldi, jan edya...  вс"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/daisy.jpg")),
//                     title: Text("Guncha Meredowa",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Фото  6:31 ПП"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/house1.jpg")),
//                     title: Text("Realtor Ashyr",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Фото  Вчера"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//               Divider(height: 2, thickness: 0, color: Colors.grey, indent: 50),
//               Container(
//                 child: ListTile(
//                     leading: CircleAvatar(
//                         backgroundImage: AssetImage("asset/jag.jpg")),
//                     title: Text("LachynA.",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600)),
//                     subtitle: Text("Privet, kak dela?"),
//                     trailing: Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     )),
//               ),
//             ]),
//             Padding(
//               padding: const EdgeInsets.only(top: 30),
//               child: Container(
//                   height: 50,
//                   decoration: BoxDecoration(color: Colors.grey[300]),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(Icons.add, color: Colors.blue, size: 30),
//                       Icon(Icons.search, color: Colors.blue, size: 30)
//                     ],
//                   )),
//             ),
//           ]),
//         ),
//       )));
// }

//
// //Homework:Button Sebete to "+" "-"
//
//
//    ), )
//
//
//
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//       home: Cart()));
// }
// class Cart extends StatefulWidget {
//
//   State<Cart> createState() => _CartState();
// }
//
// class _CartState extends State<Cart> {
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(body:
//     Row(child:
//     RaisedButton(onPressed: () { return Container(width:345, height:51, margin:EdgeInsets.only (left:14,right:16),
//         child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:
//         [Icon (Icons.remove,color:Color.fromRGBO(255, 0, 0, 1)),
//           Text("10"),
//           Icon(Icons.add,color:Color.fromRGBO(255, 0, 0, 1)),]));
//     }),
//       child: Container(
//         child: Row(
//             children:[Padding(
//               padding: const EdgeInsets.only(left:121, top:26),
//               child: Icon (Icons.add_shopping_cart_sharp),
//             ),
//               Padding(
//                   padding: const EdgeInsets.only(left:10,top:15),
//                   child: Text("Sebete goş", style: TextStyle(fontWeight:FontWeight.w400, fontSize: 16,color: Color.fromRGBO(255, 255, 255, 1)),)),],
//         ),
//       ),
//     ));}}

//
// //Homework:InkWell
// void main() {
// runApp(MaterialApp(debugShowCheckedModeBanner: false,
//      home: Scaffold(backgroundColor: Color.fromRGBO(245, 245, 245, 1),ild'.
// Row(child:
// ^^^^^
// /C:/SDK/flutter/packages/flutter/lib/src/widgets/basic.dart:4701:3: Context: Found this candidate, but the arguments don't match.
//     Row({
//     ^^^
// class  MyClass extends StatefulWidget {
//   State<MyClass> createState() => _MyClass2();
// }
//
// class _MyClass2 extends State<MyClass> {
//
//        int a=0;
//        int b=50;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body:Column(crossAxisAlignment: CrossAxisAlignment.start,
//     children: [Row(children:[
//     Padding(
//     padding: const EdgeInsets.only(top:49, left:14),
//     child: Icon (Icons.arrow_back_sharp),
//     ),
//     Padding(
//     padding: const EdgeInsets.only(top:49, left:24),
//     child: Text("Towuk etinden Täze Aý şöhlady",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: Color.fromRGBO(55, 58, 64, 1))
// ),
// )]),
// Padding(
// padding: const EdgeInsets.only(top:26, left:14),
// child: Image.asset("asset/1.jpg", width:338, height:345, fit:BoxFit.cover),
// ),
// Padding(
// padding: const EdgeInsets.only(top:15, left:14),
// child: Text("Täze aý",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color.fromRGBO(104, 109, 118, 1))),),
// Padding(
// padding: const EdgeInsets.only(top:30, left:14),
// child: Text("Towuk etinden Täze Aý şöhlady",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color.fromRGBO(55, 58, 64, 1))),
// ),
// Row(children: [Padding(
// padding: const EdgeInsets.only(top:30, left:14),
// child: Text("50 manat",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24,color: Color.fromRGBO(255, 0, 0, 1))
// )),
// Padding(
// padding: const EdgeInsets.only(top:33, left:18),
// child: Text("50 manat",style: TextStyle(
// decoration:TextDecoration.lineThrough,
// // color: Color.fromRGBO(255, 0, 0, 1),
// fontWeight: FontWeight.w500, fontSize: 20))
// )]),
// Container(width:345, height:51, margin:EdgeInsets.only (left:14,right:16),
// child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Icon (Icons.remove,color:Color.fromRGBO(255, 0, 0, 1)),
// Text("10"),Icon(Icons.add,color:Color.fromRGBO(255, 0, 0, 1)),])),
// Container(width:345, height:50, margin:EdgeInsets.only(left:14, right:16),
// decoration:BoxDecoration(borderRadius:BorderRadius.circular(5),color: Color.fromRGBO(255, 0, 0, 1),),
// child: Row(
// children:[Padding(
// padding: const EdgeInsets.only(left:121, top:26),
// child: Icon (Icons.add_shopping_cart_sharp),
// ),
// Padding(
// padding: const EdgeInsets.only(left:10,top:15),
// child: Text("Sebete goş", style: TextStyle(fontWeight:FontWeight.w400, fontSize: 16,color: Color.fromRGBO(255, 255, 255, 1)))),
// ])),]))
// )
// );}}
//   }
// }

// Homework 3. figma

// Column(children: [Padding(
//   padding: const EdgeInsets.only(top: 22, left: 15),
//   child: Container(width: 300,
//       height: 50,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color.fromRGBO(255, 255, 255, 1),border: Border.all(color:Color.fromRGBO(217,217,217,1))),
//           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 25, left: 21),
//               child: Text("Search Products", style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: Color.fromRGBO(174, 174, 174, 1)
//               ),),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 14, left: 13),
//               child: Icon(Icons.search),
//             )
//           ]
//       )
//   ),
// )
//   ,
//   Row(children:[Padding(
//   padding: const EdgeInsets.only(top:14, left: 14, right: 12),
//   child: Container(width: 225, height: 102, decoration: BoxDecoration
//     (image: DecorationImage(image: AssetImage("asset/bigphone.jpg")),
//       borderRadius: BorderRadius.circular(12),gradient: LinearGradient(
//           colors:[ Colors.red,Colors.grey] )),
//     child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//         children: [Padding(
//           padding: const EdgeInsets.only(top: 15.0, left:47),
//           child: SvgPicture.asset("../asset/svg1.svg"),
//         ),
//           Padding(
//             padding: const EdgeInsets.only(top:13, left:27),
//             child: Text("All Categories", style: TextStyle(
//                 fontWeight: FontWeight.w700,
//                 fontSize: 12,
//                 color: Color.fromRGBO(255, 242, 238, 1)
//             )),
//           )
//         ]
//     ),
//   ),),
//   Container(width: 90,
//       height: 102,
//       decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1),border: Border.all(color:Color.fromRGBO(217,217,217,1)),
//           borderRadius: BorderRadius.circular(12)),
//       child: Column
//         (children: [Padding(
//         padding: const EdgeInsets.only(top: 14.0),
//         child: Icon(
//             Icons.percent, color: Color.fromRGBO(233, 131, 101, 1)),
//       ),
//         Text("Sales", style: TextStyle(fontWeight: FontWeight.w700,
//             fontSize: 12,
//             color: Color.fromRGBO(233, 131, 101, 1))
//
//         )
//       ],
//           ))
// ],
// ),
//   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [Padding(
//       padding: const EdgeInsets.only(top:19, left:41, bottom:15),
//       child: Text("New Products", style: TextStyle(fontWeight: FontWeight.w600,
//           fontSize: 18, color: Color.fromRGBO(50, 32, 56, 1))),
//     ),
//   Padding(
//     padding: const EdgeInsets.only(top:30, left:19, bottom:19),
//     child: Icon(Icons.arrow_forward),
//   )
//   ],),
//  Row(children: [Image.asset("asset/phone.jpg", width: 175,height: 120),
//    Image.asset("asset/phone.jpg", width: 175,height: 120),
//  ],),
//   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children:[Padding(
//         padding: const EdgeInsets.only(top:9, left:22),
//         child: Padding(
//           padding: const EdgeInsets.only(top:9, left:20),
//           child: Text("Lorem Ipsum"),
//         ),
//       ), Text("Lorem Ipsum")
//   ]),
//   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children:[Padding(
//         padding: const EdgeInsets.only(top:9, left:22),
//         child: Padding(
//           padding: const EdgeInsets.only(top:9, left:20),
//           child: Text("200 TMT"),
//         ),
//       ), Text("200 TMT")
//       ]),
//   Row(children: [Image.asset("asset/phone.jpg", width: 175,height: 120),
//     Image.asset("asset/phone.jpg",width: 175,height: 120),
//   ],),
//   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children:[Padding(
//         padding: const EdgeInsets.only(top:9, left:22),
//         child: Padding(
//           padding: const EdgeInsets.only(top:9, left:20),
//           child: Text("Lorem Ipsum"),
//         ),
//       ), Text("Lorem Ipsum")
//       ]),
//   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children:[Padding(
//         padding: const EdgeInsets.only(top:9, left:22),
//         child: Padding(
//           padding: const EdgeInsets.only(top:9, left:20),
//           child: Text("200 TMT"),
//         ),
//       ), Text("200 TMT")
//       ]),
//         ],
//
//   )
//
//       )
//
//
//   )
//   );
// }
//
//
// //       // /Homework:Homepage
//   body:ListView(
//     children: [
//         Column(
//         children: [Container( margin:EdgeInsets.only(top:25), color: Color.fromRGBO(255, 221, 97, 1),
//           child: Row(mainAxisAlignment: MainAxisAlignment.end,
//             children: [ Image.asset("asset/Mask.jpg")]
//           ),
//         ),
//           Container(color: Color.fromRGBO(255, 221, 97, 1), height:60,
//             child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[
//               Padding(
//                 padding: const EdgeInsets.only(top:16, left:15),
//                 child: Image.asset("asset/baza.jpg"),
//               ), Padding(
//                 padding: const EdgeInsets.only(right:8, top:20),
//                 child: Text("TKM"),
//               ), Padding(
//                 padding: const EdgeInsets.only(right:20, top:26),
//                 child: Icon(Icons.arrow_drop_down),
//               )
//             ]),
//           ),
//      Row(children: [ Padding(
//          padding: const EdgeInsets.only(top:16,left:17),
//          child: Icon(Icons.house),
//      ),
//          Padding(
//            padding: const EdgeInsets.only(top:15,left:11, right:170),
//            child: Text("Купить"),
//          ),
//          Padding(
//            padding: const EdgeInsets.only(top:15,right:10),
//            child: Text("241519"),
//          ),
//          Padding(
//            padding: const EdgeInsets.only(top:18, right:21),
//            child: Icon(Icons.arrow_forward_ios),
//          )]),
//
//           Row(children: [ Padding(
//             padding: const EdgeInsets.only(top:16,left:17),
//             child: Icon(Icons.calendar_month_outlined),
//           ),
//             Padding(
//               padding: const EdgeInsets.only(top:15,left:11, right:140),
//               child: Text("Арендовать"),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top:16, right:10),
//               child: Text("50523"),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top:18, right:21),
//               child: Icon(Icons.arrow_forward_ios),
//             )]),
//           Row(children: [
//             Padding(
//               padding: const EdgeInsets.only(top:16,left:17),
//               child: Icon(Icons.key),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top:15,left:11, right:180),
//               child: Text("Новостройки"),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top:18, right:21),
//               child: Icon(Icons.arrow_forward_ios),
//             )]),
//           Row(children: [ Padding(
//             padding: const EdgeInsets.only(top:16,left:17),
//             child: Icon(Icons.price_change),
//           ), Padding(
//             padding: const EdgeInsets.only(top:15,left:11, right:110),
//             child: Text("Оценка недвижимости"),
//           ), Padding(
//             padding: const EdgeInsets.only(top:18, right:21),
//             child: Icon(Icons.arrow_forward_ios),
//           )]),
//           Row(children: [ Padding(
//             padding: const EdgeInsets.only(top:16,left:17),
//             child: Icon(Icons.panorama_wide_angle),
//           ), Padding(
//             padding: const EdgeInsets.only(top:15,left:11, right:150),
//             child: Text("Moи объявления"),
//           ), Padding(
//             padding: const EdgeInsets.only (top:18, right:21),
//             child: Icon(Icons.arrow_forward_ios),
//           )]),
//           Row(children: [ Padding(
//             padding: const EdgeInsets.only(top:16,left:17),
//             child: Icon(Icons.chat),
//           ),
//             Padding(
//               padding: const EdgeInsets.only(top:15,left:11, right:210),
//               child: Text("Новости"),
//             ),Padding(
//               padding: const EdgeInsets.only (top:18, right:21),
//               child: Icon(Icons.arrow_forward_ios),
//             )]),
//           Row(children: [ Padding(
//             padding: const EdgeInsets.only(top:16,left:17),
//             child: Icon(Icons.new_releases_outlined),
//           ), Padding(
//             padding: const EdgeInsets.only(top:15,left:11, right:190),
//             child: Text("Крыша Гид"),
//           ), Padding(
//             padding: const EdgeInsets.only (top:18, right:21),
//             child: Icon(Icons.arrow_forward_ios),
//           )]),
// Padding(
//     padding: const EdgeInsets.only(top:20, left:16),
//     child: Text("Горячие предложения в Туркменистанe",style:TextStyle(fontSize: 14, color: Color.fromRGBO(22, 22, 22, 1), fontWeight: FontWeight.w400 ),),),
//           Container(padding: EdgeInsets.only(top:10, left:5),
//             child: Row(children: [Padding(
//               padding: const EdgeInsets.only(right:5),
//               child: Image.asset("asset/house1.jpg"),
//             ),
//             Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
//               Text("2 500 000 TMT", style:TextStyle(fontSize: 12, color: Color.fromRGBO(48, 173, 110, 1))),
//               Text("1-комнатная квартира, 35 м², 1/2.",style:TextStyle(fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1))),
//               Text("мкр 12, Байтурсынова 4", style:TextStyle (fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1))),
//               Text("кирпичный дом, 2020 г.п., Апарт..", style:TextStyle (fontSize: 12, color: Color.fromRGBO(163, 171, 179, 1)))
//                   ])]
//               ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top:8, left:5),
//             child: Row(children:[Icon (Icons.contact_mail_outlined, color:Color.fromRGBO(255, 221, 97, 1)
//           ),Padding(
//               padding: const EdgeInsets.only(left:9),
//               child: Text("Специалист Аман Аманов, Атриум Ехперт",style:TextStyle(fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1)),
//             ))]),
//           ),
//           Row(children: [ Padding(
//             padding: const EdgeInsets.only(top:8, left:5, right:7),
//             child: Icon(Icons.calendar_month),
//           ), Text("8.Октября"), Padding(
//             padding: const EdgeInsets.only(left:16, right:6),
//             child: Icon(Icons.preview,),
//           ), Text("4325")]),
//           Container(padding: EdgeInsets.only(top:10, left:5), decoration:BoxDecoration(color: Color.fromRGBO(211, 51, 103, 0.16)),
//             child: Row(children: [Padding(
//               padding: const EdgeInsets.only(right:5),
//               child: Image.asset("asset/house2.jpg"),
//             ),
//               Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
//                 Text("2 500 000 TMT", style:TextStyle(fontSize: 12, color: Color.fromRGBO(48, 173, 110, 1))),
//                 Text("1-комнатная квартира, 35 м², 1/2.",style:TextStyle(fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1))),
//                 Text("мкр 12, Байтурсынова 4", style:TextStyle (fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1))),
//                 Text("кирпичный дом, 2020 г.п., Апарт..", style:TextStyle (fontSize: 12, color: Color.fromRGBO(163, 171, 179, 1)))
//               ])]
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left:5),
//             child: Container(decoration:BoxDecoration(color: Color.fromRGBO(211, 51, 103, 0.16)),
//               child: Row(children:[Icon (Icons.contact_mail_outlined, color:Color.fromRGBO(255, 221, 97, 1)
//               ),Padding(
//                   padding: const EdgeInsets.only(left:9),
//                   child: Text("Специалист Аман Аманов, Атриум Ехперт",style:TextStyle(fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1)),
//                   ))]),
//             ),
//           ),
//           Container(decoration:BoxDecoration(color: Color.fromRGBO(211, 51, 103, 0.16)),
//             child: Row(children: [ Padding(
//               padding: const EdgeInsets.only(top:8, left:5, right:7),
//               child: Icon(Icons.calendar_month),
//             ), Text("8.Октября"), Padding(
//               padding: const EdgeInsets.only(left:16, right:6),
//               child: Icon(Icons.preview,),
//             ), Text("4325")]),
//           ),
//           Container(margin:EdgeInsets.only(top:10), padding: EdgeInsets.only(top:10, left:5),
//             decoration:BoxDecoration(color: Color.fromRGBO(48, 173, 110, 0.16),),
//             child: Row(children: [Padding(
//               padding: const EdgeInsets.only(right:5),
//               child: Image.asset("asset/house3.jpg"),
//             ),
//               Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
//                 Text("2 500 000 TMT", style:TextStyle(fontSize: 12, color: Color.fromRGBO(48, 173, 110, 1))),
//                 Text("1-комнатная квартира, 35 м², 1/2.",style:TextStyle(fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1))),
//                 Text("мкр 12, Байтурсынова 4", style:TextStyle (fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1))),
//                 Text("кирпичный дом, 2020 г.п., Апарт..", style:TextStyle (fontSize: 12, color: Color.fromRGBO(163, 171, 179, 1)))
//               ])]
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left:5),
//             child: Container(decoration:BoxDecoration(color: Color.fromRGBO(48, 173, 110, 0.16)),
//               child: Row(children:[Icon (Icons.contact_mail_outlined, color:Color.fromRGBO(255, 221, 97, 1)
//               ),Padding(
//                   padding: const EdgeInsets.only(left:9),
//                   child: Text("Специалист Аман Аманов, Атриум Ехперт",style:TextStyle(fontSize: 12, color: Color.fromRGBO(22, 22, 22, 1)),
//                   ))]),
//             ),
//           ),
//           Container(decoration:BoxDecoration(color: Color.fromRGBO(48, 173, 110, 0.16)),
//             child: Row(children: [ Padding(
//               padding: const EdgeInsets.only(top:8, left:5, right:7),
//               child: Icon(Icons.calendar_month),
//             ), Text("8.Октября"), Padding(
//               padding: const EdgeInsets.only(left:16, right:6),
//               child: Icon(Icons.preview,),
//             ), Text("4325")]),
//           ),
//
//         ] ),
//       ],
//     ))));
//   }

//Homework 2.figma
//     body:Column(crossAxisAlignment: CrossAxisAlignment.start,
// children:[
//   Row(crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//   Padding(
//     padding: const EdgeInsets.only(left:15, top:30),
//     child: Icon(Icons.add_comment_rounded),
//   ),
//   Padding(
//     padding: const EdgeInsets.only(left:16, top:30),
//     child: Container(height:40, width:249,
//         child:Padding(
//           padding: const EdgeInsets.only(top:11, left:15),
//           child: Text("Search", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color.fromRGBO(153, 153, 153, 1)))),),
//         ),
//               Padding(
//                 padding: const EdgeInsets.only(left:15, top:30),
//                 child: Icon(Icons.more_horiz)),
// ]),
// Padding(
//   padding: const EdgeInsets.only(top:10, left:15),
//   child: Image.asset("asset/banner.jpg", height: 200, width: 330,fit: BoxFit.cover),
// ),
//   Padding(
//     padding: const EdgeInsets.only(top:15, left:15),
//     child: Row (crossAxisAlignment:CrossAxisAlignment.center , mainAxisAlignment:MainAxisAlignment.spaceEvenly ,children:[
//       Image.asset("asset/aksiya 1.jpg"),
//       Image.asset("asset/smallphone.jpg"),
//       Image.asset("asset/smallphone.jpg"),
//       Image.asset("asset/smallphone.jpg")
//     ]),
//   ),
//         Padding(
//           padding: const EdgeInsets.only(top:10, left:20),
//           child: Row ( crossAxisAlignment:CrossAxisAlignment.center , mainAxisAlignment:MainAxisAlignment.spaceEvenly ,children:[
//             Text("Aksiya"),
//             Text("Iphone 13"),
//             Text("Iphone 13"),
//             Text("Iphone 13")
//           ]),
//         ),
//       Padding(
//         padding: const EdgeInsets.only(top:35, left:15),
//         child: Row ( crossAxisAlignment:CrossAxisAlignment.center , mainAxisAlignment:MainAxisAlignment.spaceEvenly ,children:[
//           Image.asset("asset/washmach.jpg"),
//           Image.asset("asset/bigphone.jpg")
//  ]),
//       ),
//   Padding(
//     padding: const EdgeInsets.only(top:11, left:13),
//     child: Row ( crossAxisAlignment:CrossAxisAlignment.start , mainAxisAlignment:MainAxisAlignment.spaceEvenly ,children:[
//       Container(width:66, height:20, decoration:BoxDecoration( borderRadius: BorderRadius.circular(5), color: Color.fromRGBO(255, 20, 29, 1),),child: Text("18310")),
//       Container(width:66, height:20, decoration:BoxDecoration( borderRadius: BorderRadius.circular(5), color: Color.fromRGBO(255, 20, 29, 1),),child: Text("18310"))
//     ]),
//   ),
//         Padding(
//           padding: const EdgeInsets.only(top:11),
//           child: Row ( crossAxisAlignment:CrossAxisAlignment.center , mainAxisAlignment:MainAxisAlignment.spaceEvenly ,children:[
//             Text("Beko Washing Machine"),
//             Text("Iphone 13 Pro Max")
// ]),
//         ),
//     ]))));
// }

// Homework 1. figma
//       appBar:AppBar(backgroundColor:Colors.white,elevation: 0.0, leading: const Icon(Icons.add_shopping_cart_sharp,color: Colors.red),
//           // child: Container (width:121.31, height:3.55,
//           //     decoration:BoxDecoration(color: Colors.red, shape: BoxShape.rectangle)),
//     title:Text ("SEBET", style:TextStyle(color:Colors.red, fontWeight: FontWeight.bold),
//         )),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left:15.85, top:20, right:21.0),
//             child: Container (width:349.15, height:49,
//             decoration:BoxDecoration(color: Colors.grey[200], shape: BoxShape.rectangle),
//     child:Padding(
//           padding: const EdgeInsets.only(left:14.0, top:12.0, bottom:13),
//           child: Text("Haryt Gözle", style: TextStyle(fontSize: 12, color:Colors.grey[104])),
//       // decoration:InputDecoration(prefixIcon: Icon(Icons.search)),
//       //icon:Icon(Icons.search),
//   ),),
//                ),
//            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [Padding(
//           padding: const EdgeInsets.only(right:24.24, top:18.14),
//           child: Container(
//             width: 93.24,height: 20.0,
//             color: Colors.white,
//             child: const Text("Arzanlandyşlar",
//             style: TextStyle(color:Colors.grey, fontSize: 16, fontWeight: FontWeight.normal),),),
//         ),
//           Padding(
//             padding: const EdgeInsets.only(right:43.8,top:21.14),
//             child: Container(
//               width: 66.2,height: 17.0,
//               color: Colors.white,
//               child: const Text ("ählisi gör",style: TextStyle(color:Colors.red, fontSize: 14, fontWeight: FontWeight.normal)),),
//           ),]
//       ),
//   Padding(
//     padding: const EdgeInsets.only(top:26, left: 17.0),
//     child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: [Container(width: 170,height: 170,child: Image.asset("asset/1.jpg")),
//                    Padding(
//                      padding: const EdgeInsets.only(right: 11.0),
//                      child: Container(width: 170,height: 170, child: Image.asset("asset/1.jpg")),
//                    ),
//
//           ]),
//   ),
//     Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [Padding(
//           padding: const EdgeInsets.only(left:24, top:1.64),
//           child: Container(width: 78,height: 15,color: Colors.white,child: const Text("Täze aý şöhlät",
//             style: TextStyle(color:Colors.grey, fontSize: 12, fontWeight: FontWeight.normal),),),
//         ),
//           Padding(
//             padding: const EdgeInsets.only(right:43.8, top:1.64),
//             child: Container(width: 78,height: 15,color: Colors.white,child: const Text ("Täze aý şöhlät",
//                 style: TextStyle(color:Colors.grey, fontSize: 12, fontWeight: FontWeight.normal)),),
//           ),]),
//           Row(
//               children: [Padding(
//                 padding: const EdgeInsets.only(left: 24.0, top:15.36),
//                 child: Container(width: 53,height: 15,color: Colors.white,child: const Text("50 manat",
//                   style: TextStyle(color:Colors.red, fontSize: 12),),),
//               ),
//                 Container(width: 39,height: 11,color: Colors.white,child: const Text ("50 manat",
//                     style: TextStyle(color:Colors.grey, fontSize: 9, fontWeight: FontWeight.normal)),),
//   Padding(
//     padding: const EdgeInsets.only(left:110, top:15.36),
//     child: Container(width: 53,height: 15,color: Colors.white,child: const Text("50 manat",
//       style: TextStyle(color:Colors.red, fontSize: 12))),
//   ),
// Padding(
//   padding: const EdgeInsets.only(right:72, top:17.36),
//   child: Container(width: 39,height: 11,color: Colors.white,child: const Text ("50 manat",
//   style: TextStyle(color:Colors.grey, fontSize: 9, fontWeight: FontWeight.normal))),
// ),]),
//         ]))));

//Homework 1
// body: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
//  children:  [
//    Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: [Container(width: 50,height: 50,color: Colors.red),
//          Container(width: 50,height: 50,color: Colors.green),
//          Container(width: 50,height: 50,color: Colors.teal)]),
// Container(width: 50,height: 50,color: Colors.orange),
//    Container(width: 50,height: 50,color: Colors.green),
//    Container(width: 50,height: 50,color: Colors.blue),
//    Container(width: 50,height: 50,color: Colors.black)
//  ]),)));

//Homework 2
//     body: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//   Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [Container(width: 100,height: 100,color: Colors.red,child: const Text("Hello"),),
//   Container(width: 100,height: 100,color: Colors.green,child: const Text ("Hello"),),
//   Container(width: 100,height: 100,color: Colors.teal,child: const Text ("Hello"),)],),
//           Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [Container(width: 100,height: 100,color: Colors.red,child: const Text("Hello"),),
//                 Container(width: 100,height: 100,color: Colors.green,child: const Text ("Hello"),),
//                 Container(width: 100,height: 100,color: Colors.teal,child: const Text ("Hello"),)]),
//             Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [Container(width: 100,height: 100,color: Colors.red,child: const Text("Hello"),),
//               Container(width: 100,height: 100,color: Colors.green,child: const Text ("Hello"),),
//               Container(width: 100,height: 100,color: Colors.teal,child: const Text ("Hello"),)],),]),)));
