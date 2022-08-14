//
//
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner:false,home:SafeArea(
//     child:
//     MyScaffold(),
//   )));
// }
//
// class MyAppBar extends StatelessWidget {
//   const MyAppBar({required this.title, super.key});
//
//   // Fields in a Widget subclass are always marked "final".
//
//   final Widget title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56.0, // in logical pixels
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       // Row is a horizontal, linear layout.
//       child: Row(
//         children: [
//           const IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null, // null disables the button
//           ),
//           // Expanded expands its child
//           // to fill the available space.
//           Expanded(
//             child: title,
//           ),
//           const IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MyScaffold extends StatelessWidget {
//   const MyScaffold({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Material is a conceptual piece
//     // of paper on which the UI appears.
//     return Material(
//       // Column is a vertical, linear layout.
//       child: Column(
//         children: [
//           MyAppBar(
//             title: Text(
//               'Example title',
//               style: Theme.of(context) //
//                   .primaryTextTheme
//                   .headline6,
//             ),
//           ),
//           const Expanded(
//             child: Center(
//               child: Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
// //
// // class Urok extends StatefulWidget {
// //   const Urok({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Urok> createState() => _UrokState();
// // }
// //
// // class _UrokState extends State<Urok> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Pageview(controller:control,
// //         children:[
// //       Container(width:double.infinity,
// //       height:double.infinity,
// //       color:Colors.red,
// //       child:Text("First Page")),
// //       Container(width:double.infinity,
// //           height:double.infinity,
// //           color:Colors.green,
// //           child:Text("First Page")),
// //       Container(width:double.infinity,
// //           height:double.infinity,
// //           color:Colors.blue,
// //           child:Text("First Page")),
// //           Container(child: Column(children: [
// //             CheckboxListTile(value: value, onChanged: onChanged)
// //           ],),)
// //     ]
// //     );
// //   }
// // }
//
//
// class TMcars extends StatefulWidget {
//   const TMcars({Key? key}) : super(key: key);
//
//   @override
//   State<TMcars> createState() => _TMcarsState();
// }
//
// class _TMcarsState extends State<TMcars> {
//   List a=[Icons.pages_outlined, Icons.directions_car, Icons.build_circle_outlined,
//   Icons.shopping_basket_outlined, Icons.star, Icons.calendar_today, Icons.add_box_outlined, Icons.settings_outlined, Icons.share, Icons.chat_outlined];
//   List b=["Bas Sahypa", "Awtoulaglar", "Awtosaylar","Beyleki", "Biznes hasaplar", "Habarlar",
//   "Bildiris gosmak","Sazlamalar", "Paylasmak","Habarlasmak"];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar:AppBar(title:Text("Baş Sahypa"), backgroundColor: Colors.indigo,),
//         drawer:Drawer(backgroundColor: Colors.white,
//     child:Column(children:[SizedBox(height:200,
//     child: DrawerHeader(
//       child:Column(
//         children: [
//           Image.asset("asset/tmcars.png",color: Colors.black, height:100, width: 100,),
//           Text("Menin profilim", style:TextStyle(color:Colors.black, fontSize: 12,decoration: TextDecoration.underline)),
//           Text("9936517540",  style:TextStyle(color:Colors.black, fontSize: 12, decoration: TextDecoration.underline)),
//           // Divider(height:10),
//          Container(height: 700,
//            child: ListView.builder(itemCount:a.length,
//       itemBuilder: (context, index) =>ListTile(
//         leading: Icon(a[index]),
//               title: Text("${b[index]}"),
//                 )),
//          ),
//         ],),
//           ),
//           ),]
//   )));
// }
// }
//
//
// //Homework Menu
// class Menu extends StatefulWidget {
//   const Menu({Key? key}) : super(key: key);
//
//   @override
//   State<Menu> createState() => _MenuState();
// }
//
// class _MenuState extends State<Menu> {
//   String b="gyz";
//   bool c=false;
//   bool a=true;
//
//   bool e=true;
//   bool f=true;
//   double d=10;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // backgroundColor: c==true?Colors.white:Colors.grey,
// body: Column(children: [
//   RadioListTile(title: Text("Oglan"),
// controlAffinity: ListTileControlAffinity.trailing,
// activeColor: Colors.blue,value:"Oglan",groupValue: b,onChanged: (oglan)
// {debugPrint(oglan.toString());setState(() {
//   b=oglan.toString();
// });
//  }),
// RadioListTile(title: Text("Gyz"),
// controlAffinity: ListTileControlAffinity.trailing,
// activeColor: Colors.blue,value:"gyz",groupValue: b,onChanged: (gyz)
// {debugPrint(gyz.toString());setState(() {
// b=gyz.toString();
// });
// },),
// CheckboxListTile(title:Text("EN"),
// controlAffinity:ListTileControlAffinity.trailing,
// activeColor:Colors.blue,value: a, onChanged: (check){
//   setState(() {a=check!;
//   });
// }),
// CheckboxListTile(title:Text("TM"),
// controlAffinity:ListTileControlAffinity.trailing,
// activeColor:Colors.blue,value: f, onChanged: (check){
// setState(() {f=check!;
// });
// }),
// CheckboxListTile(title:Text("RU"),
// controlAffinity:ListTileControlAffinity.trailing,
// activeColor:Colors.blue,value: e, onChanged: (check){
// setState(() {e=check!;
// });
// }),
// Text("Age:"+d.toInt().toString()),
// Slider(label:"Select Age", value:d, onChanged: (value){
//   setState(() {
//       d=value;
//   });
// },min:10, max:80,),
//   Text("Do you know any Programming languages?"),
// SwitchListTile(title:c==true?Text("Hawa"):Text("Yok"),
// value:c, onChanged:(sayla){
//   setState(() {c=sayla;
//   });
// }),
// // CheckboxListTile(value: value, onChanged: onChanged)
// ],),
//
//
//       ),
//     );
//   }
// }
// //Homework:Text1
// class Liste extends StatefulWidget {
//   const Liste({Key? key}) : super(key: key);
//
//   @override
//   State<Liste> createState() => _ListeState();
// }
//
// class _ListeState extends State<Liste> {
//   @override
//   Widget build(BuildContext context) {
//       return SafeArea(child:Scaffold(body:SingleChildScrollView(
//         child: Column
//         (crossAxisAlignment:CrossAxisAlignment.start,children:[
//         Padding(
//           padding: const EdgeInsets.only(top:30.0),
//           child: Center(child: CircleAvatar(radius:40,backgroundColor:Color.fromRGBO(196, 196, 196, 1),
//               child:Icon(Icons.person_outline_sharp,size: 30, color:Color.fromRGBO(97, 97, 97, 1)))),
//         ),
// Padding(
//   padding: const EdgeInsets.only(top:20, bottom: 4, left: 14),
//   child:   Text("Adyňyz we familiýaňyz",style: TextStyle(color:Color.fromRGBO(97, 97, 97, 1),fontWeight: FontWeight.w500,fontSize: 14)),
// ),
// Padding(
//   padding: const EdgeInsets.all(14.0),
//   child:   TextField(decoration: InputDecoration(
//         border: OutlineInputBorder(borderRadius:BorderRadius.circular(6)),labelText: "Adyňyz we familiýaňyz")
//   ),),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child:   TextField(decoration: InputDecoration(
//                 border: OutlineInputBorder(borderRadius:BorderRadius.circular(6)),labelText: "Login")
//             ),),
//           Padding(
//             padding: const EdgeInsets.only(top:20, bottom: 4, left: 14),
//             child:   Text("Telefon belgiňiz",style: TextStyle(color:Color.fromRGBO(97, 97, 97, 1),fontWeight: FontWeight.w500,fontSize: 14)),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child:   TextField(keyboardType: TextInputType.number,decoration: InputDecoration(
//                 border: OutlineInputBorder(borderRadius:BorderRadius.circular(6)),
//                  prefixText: "+993",labelText: "+993"
//
//             )
//             ),),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child:   TextField(obscureText: true,decoration: InputDecoration(
//                 border: OutlineInputBorder(borderRadius:BorderRadius.circular(6)),labelText: "Açar soziňiz",
//             suffixIcon: Icon(Icons.remove_red_eye_outlined))
//             ),),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child:   TextField(obscureText: true,decoration: InputDecoration(
//                 border: OutlineInputBorder(borderRadius:BorderRadius.circular(6)),labelText: "Açar soziňizi tassyklaň",
//                 suffixIcon: Icon(Icons.remove_red_eye_outlined))
//             )
//             ),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child:   Container(width:360, height:50,decoration:BoxDecoration(color:Colors.red, borderRadius: BorderRadius.circular(6)),
//             child:Row(mainAxisAlignment:MainAxisAlignment.center,children: [Padding(
//               padding: const EdgeInsets.only(right:15.0),
//               child: Icon(Icons.person_add_alt, color: Colors.white,),
//             ),
//               Text("Agza bol", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),)
//
//             ],))
//             ),]),
//       )));
//   }
// }
//
// class Shop extends StatefulWidget {
//   const Shop({Key? key}) : super(key: key);
//
//   @override
//   State<Shop> createState() => _ShopState();
// }
//
// class _ShopState extends State<Shop> {
//   int quantity1=0;
//   List surat = [
//     "asset/Slider.jpg",
//         "asset/oranges.jpg",
//     "asset/apple.jpg",
//     "asset/banana.jpg",
//     "asset/peppers.jpg",
//     "asset/cherries.jpg"];
//
//   List miwe = ["Shohlat", " Oranges", "Apples", "Bananas", "Peppers","Cherries"];
//
//   @override
//   Widget build(BuildContext context) {
//        return SafeArea(child: Scaffold(
//       body: CustomScrollView(
//         slivers: [SliverList(delegate: SliverChildListDelegate([
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//             children: [Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Image.asset("asset/sebet.jpg"),
//             ),
//               Container(
//                   height: 40,
//                   width: 349,
//                   decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color.fromRGBO(230, 230, 230, 1)),
//                   child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
//                       children: [
//                     Text("Haryt Gozle"),
//                     Icon(Icons.search),
//                   ]))
//                    ],),
//           )
//           ])),
//           SliverList(
//               delegate: SliverChildListDelegate([
//                 Container(width:MediaQuery.of(context).size.width,
//                     height:200,
//                   child: PageView.builder(itemCount:miwe.length,
//                     itemBuilder: ((context, index)=>
//                       Container(width:double.infinity,
//     height:100,child:Center(child:Stack(
//     children:[Image.asset("${surat[index]}"),
//     Text("${miwe[index]}")]))
//                     ,)))
//                 ),
//
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [Text("Arzanladyşlar"),
//                          GestureDetector(onTap:
//                              (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Arzan()
//                              ));
//                              },
//                            child: Row(
//                              children: [
//                                Text("ählisini gör", style: TextStyle(color: Colors.red),),
//                                Icon(Icons.arrow_forward, color:Colors.red),
//                              ],
//                            ),
//                          )]),
//                      )
//           ])),
//           SliverGrid(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return GestureDetector(onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>
//                     Towuk()));},
//                   child: Card(
//                       child: Column(
//                           children: [
//                     Stack( children: [Image.asset("asset/shohlat.jpg", height: 145,width: 145,),
//                         Positioned(right: 0, top:0,
//                           child: Container(height:20, width: 20,decoration:
//                           BoxDecoration(borderRadius:BorderRadius.circular(5),color: Color.fromRGBO(255, 0, 0, 1)),
//                               child:Center(child: Text("-20%", style: TextStyle(fontSize: 8, color: Colors.white),))),
//                         ),
//                     Positioned(right:0,bottom:0,
//                       child: Container(height:20, width: 20,decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1)),
//                           child:GestureDetector(onTap: (){ quantity1++;
//                             setState(() {}); },
//                               child: Icon(Icons.shopping_basket_outlined,color: Colors.red,size: 15,))),
//                     )]),
//                     Row(
//                       children: [Padding(
//                         padding: const EdgeInsets.only(left:
//                         20.0),
//                         child: Text("Täze aý şöhlat"),
//                       ), Padding(
//                         padding: const EdgeInsets.only(left:8.0),
//                         child: quantity1>0?Text(quantity1.toString()):Text("0", style: TextStyle(fontWeight: FontWeight.bold)),
//                       )],
//                     ),
//                     Row(
//                       children: [Padding(
//                         padding: const EdgeInsets.only(left: 20.0),
//                         child: Text("50 manat", style: TextStyle(color: Colors.red)),
//                       ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 10.0),
//                           child: Text("50 manat", style: TextStyle(decoration: TextDecoration.lineThrough),),
//                         )],
//                     ),
//                   ])),
//                 );
//               },
//               childCount: 6, ),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
//           ),
//         ],
//       ),)
//     );
//   }
// }
//
// class Towuk extends StatefulWidget {
//   const Towuk({Key? key}) : super(key: key);
//
//   @override
//   State<Towuk> createState() => _TowukState();
// }
//
// class _TowukState extends State<Towuk> {
//   int price=50;
//   int quantity=0;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child:Scaffold(
//       body:SingleChildScrollView(child:Column(crossAxisAlignment:CrossAxisAlignment.start,
//         children: [
//         Padding(
//           padding: const EdgeInsets.all(35.0),
//           child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
//             children: [
//             GestureDetector(onTap:() {Navigator.pop(context);},
//                 child: Icon(Icons.arrow_back)),
//             Text("Towuk etinden Täze Aý şöhlady"),
//           ],),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(14.0),
//           child: Container(height:338, width: 345,
//               child: Image.asset("asset/shohlat.jpg", fit:BoxFit.cover)),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 8.0, bottom:20),
//           child: Text("Täze aý"),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 8.0, bottom: 20),
//           child: Text("Towuk etinden Täze Aý şöhlady"),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left:8, bottom: 20.0),
//           child: Row(
//             children: [Padding(
//               padding: const EdgeInsets.only(right:18.0),
//               child: Text("50 manat", style: TextStyle(color: Colors.red)),
//             ),
//             Text("50 manat", style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey)),
//           ],),
//         ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
// GestureDetector(onTap:(){quantity--; setState(() {
//
// });},
//   child:   Container(width:56, height:51,
//
//       decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,
//
//       color: Color.fromRGBO(7, 26, 82, 0.2))),
//
//       child: Center(child: Text("-", style: TextStyle(color: Colors.red)))),
// ) ,
// Container(width:108, height:51,
//     decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,
//     color: Color.fromRGBO(7, 26, 82, 0.2))),
//     child: Center(child: quantity>0?Text(quantity.toString()):Text("0")))   ,
// GestureDetector(onTap: (){
//   quantity++; setState(() {
//       });
// },
//   child:   Container(width:56, height:51,
//       decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid,
//           color: Color.fromRGBO(7, 26, 82, 0.2))),
//       child: Center(child: Text("+",style: TextStyle(color: Colors.red)))),
// ),
//             ],),
//           ),
//        Padding(
//          padding: const EdgeInsets.only(top:20.0, bottom: 71),
//          child: Center(
//            child: Container(height: 50, width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
//              color: Color.fromRGBO(255, 0, 0, 1)),
//
//              child: (quantity*price)!=0 && (quantity*price)>0?
//              Center(child: Text("${(quantity*price).toString()} manat",
//                style:TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w600), )):
//              Row(mainAxisAlignment:MainAxisAlignment.center,children: [
//              Padding(
//                padding: const EdgeInsets.only(right:10.0),
//                child: Icon(Icons.shopping_basket_outlined, color: Colors.white,),
//              ),
//              Text("Sebete goş",style:TextStyle(fontSize: 16,
//                  color: Colors.white, fontWeight: FontWeight.w600)),
//            ],),
//             ),
//          ),
//        ),
//     ],)))
//     );
//   }
// }
//
// class Arzan extends StatefulWidget {
//   const Arzan({Key? key}) : super(key: key);
//
//   @override
//   State<Arzan> createState() => _ArzanState();
// }
//
// class _ArzanState extends State<Arzan> {
//   @override
//   Widget build(BuildContext context) {
//
//     return SafeArea(child:Scaffold(
//       body:OrientationBuilder(builder:((context, orientation) {
//         if (orientation == Orientation.portrait) {return
//           CustomScrollView(slivers: [
//             SliverList(delegate: SliverChildListDelegate([
//               Padding(
//                 padding: const EdgeInsets.only(top:35.0),
//                 child: Row(children: [GestureDetector(onTap: (){
//                   Navigator.pop(context);
//                 },
//                     child: Padding(
//                       padding: const EdgeInsets.only(left:14.0, right:14),
//                       child: Icon(Icons.arrow_back_ios_outlined),
//                     )),
//                   Text("Arzanladyşyklar")
//                 ],),
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [Padding(
//                   padding: const EdgeInsets.only(top:20, left: 5, right:15.0, bottom: 20),
//                   child: Container(width: 170, height: 40,decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1)),
//                     child: Row(
//                       children: [Icon(Icons.sell), Text("Brend saýla"), Icon(Icons.arrow_drop_down_outlined)],
//                     )
//                     ,),
//                 ),
//                   Container(width: 170, height: 40,decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1)),
//                     child: Row(
//                       children: [Icon(Icons.arrow_downward, size: 17,),Icon(Icons.sort_outlined), Text("Tertiplemek"), Icon(Icons.arrow_drop_down_outlined)],
//                     ),)
//                 ],)
//             ])
//             ),
//
//             SliverGrid(
//               delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                   return Card(
//                       child: Column(
//                           children: [
//                             Image.asset("asset/shohlat.jpg", height: 145,width: 145,),
//                             Row(
//                               children: [Padding(
//                                 padding: const EdgeInsets.only(left:
//                                 20.0),
//                                 child: Text("Täze aý şöhlat"),
//                               ), Padding(
//                                 padding: const EdgeInsets.only(left:8.0),
//                                 child: Text("0", style: TextStyle(fontWeight: FontWeight.bold)),
//                               )],
//                             ),
//                             Row(
//                               children: [Padding(
//                                 padding: const EdgeInsets.only(left: 20.0),
//                                 child: Text("50 manat", style: TextStyle(color: Colors.red)),
//                               ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 10.0),
//                                   child: Text("50 manat", style: TextStyle(decoration: TextDecoration.lineThrough),),
//                                 )],
//                             ),
//                           ]));
//                 },
//                 childCount: 6, ),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 10, crossAxisSpacing: 10),
//             ),
//
//           ],)
//         ;}else
//         {return  CustomScrollView(slivers: [
//         SliverList(delegate: SliverChildListDelegate([
//         Padding(
//         padding: const EdgeInsets.only(top:35.0),
//         child: Row(children: [GestureDetector(onTap: (){
//         Navigator.pop(context);
//         },
//         child: Padding(
//         padding: const EdgeInsets.only(left:14.0, right:14),
//         child: Icon(Icons.arrow_back_ios_outlined),
//         )),
//         Text("Arzanladyşyklar")
//         ],),
//         ),
//         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [Padding(
//         padding: const EdgeInsets.only(top:20, left: 5, right:15.0, bottom: 20),
//         child: Container(width: 170, height: 40,decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1)),
//         child: Row(
//         children: [Icon(Icons.sell), Text("Brend saýla"), Icon(Icons.arrow_drop_down_outlined)],
//         )
//         ,),
//         ),
//         Container(width: 170, height: 40,decoration: BoxDecoration(color: Color.fromRGBO(230, 230, 230, 1)),
//         child: Row(
//         children: [Icon(Icons.arrow_downward, size: 17,),Icon(Icons.sort_outlined), Text("Tertiplemek"), Icon(Icons.arrow_drop_down_outlined)],
//         ),)
//         ],)
//         ])
//         ),
//
//         SliverGrid(
//         delegate: SliverChildBuilderDelegate(
//         (BuildContext context, int index) {
//         return Container(height: 500,width: 500,
//         child: Column(
//         children: [
//         Image.asset("asset/shohlat.jpg"),
//         Row(
//         children: [Padding(
//         padding: const EdgeInsets.only(left:
//         20.0),
//         child: Text("Täze aý şöhlat"),
//         ), Padding(
//         padding: const EdgeInsets.only(left:8.0),
//         child: Text("0", style: TextStyle(fontWeight: FontWeight.bold)),
//         )],
//         ),
//         Row(
//         children: [Padding(
//         padding: const EdgeInsets.only(left: 20.0),
//         child: Text("50 manat", style: TextStyle(color: Colors.red)),
//         ),
//         Padding(
//         padding: const EdgeInsets.only(left: 10.0),
//         child: Text("50 manat", style: TextStyle(decoration: TextDecoration.lineThrough),),
//         )],
//         ),
//         ]));
//         },
//         childCount: 6, ),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 1,
//         mainAxisSpacing: 10, crossAxisSpacing: 10),
//         ),
//
//         ],);
//       }}
//       )))
//
//     );
//   }
// }
//
//
// // class Liste extends StatefulWidget {
// //   const Liste({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Liste> createState() => _ListeState();
// // }
// //
// // class _ListeState extends State<Liste> {
// // String a="Minecraft is a 3-D computer game where players can build anything. The game which has been described as like an ‘online Lego’ involves building blocks and creating structures across different environments and terrains. Set in a virtual world the game involves resource gathering, crafting items, building, and combat.It’s one of the most popular games in the world right now and can be an excellent way for kids to learn about creativity and working together.Minecraft can be played on computers,"
// //     " phones, tablets and consoles. The game can cost around €20.00 depending on what device you are using it on.";
// // String b= "Minecraft, oýunçylaryň islendik zady gurup bilýän 3-D kompýuter oýny. “Onlaýn Lego” ýaly häsiýetlendirilen oýun bloklary gurmagy we dürli gurşawda we sebitlerde gurluşlary döretmegi öz içine alýar. Wirtual dünýäde döredilen oýun çeşme ýygnamagy, zatlary ýasamagy, gurmagy we söweşmegi öz içine alýar.Häzirki wagtda dünýäde iň meşhur oýunlaryň biri we çagalaryň döredijilik hakda öwrenmegi we bilelikde işlemegi üçin ajaýyp usul bolup biler .Minecraft kompýuterlerde, telefonlarda, planşetlerde we konsollarda oýnalyp bilner. Oýun haýsy enjamda ulanýandygyňyza"
// //     " baglylykda 20.00 töweregi bolup biler.";
// //   @override
// //   Widget build(BuildContext context) {
// //     return  Scaffold (body: CustomScrollView(slivers:
// //     [SliverAppBar(leading:Icon (Icons.arrow_back_ios_outlined),floating:true, pinned: true,snap: true,
// //       expandedHeight:250,.
// //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
// //     flexibleSpace:FlexibleSpaceBar(
// //     background:Padding(
// //       padding: const EdgeInsets.only(top:18.0),
// //       child: Image.asset("asset/minec.jpg",
// //       fit:BoxFit.cover),
// //     ),),
// //       actions: [ElevatedButton(onPressed: () {}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),child: Text("TM")),
// //         ElevatedButton(onPressed: () {}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),child: Text("EN"))
// //       ],
// //
// //     ),
// //     SliverList(delegate: SliverChildBuilderDelegate((context, index){
// //       return Container(
// //         child: ListTile(leading:Image.asset("asset/game2.jpg",height: 100,width: 100,), title: Text("Minecraft",
// //       style:TextStyle(fontFamily: "fonttm"),),
// //             subtitle:const Text("The game was created by Markus Persson in the Java programming language. "),
// //     ),
// //       );}, childCount:1)),
// //       SliverList(delegate: SliverChildListDelegate([
// //         Column(children: [
// //           Divider(height: 2, thickness: 0, color: Colors.grey, indent: 10, endIndent: 10,),
// //           Padding(
// //             padding: const EdgeInsets.all(12.0),
// //             child: Text("Minecraft is a 3-D computer game where players can build anything. The game which has been described as like an ‘online Lego’ involves building blocks and creating "
// //                 "structures across different environments and terrains. Set in a virtual world the game involves resource gathering, crafting items, building, and combat."
// //                 "It’s one of the most popular games in the world right now and can be an excellent way for kids to learn about creativity and working together.Minecraft can "
// //                 "be played on computers, phones, tablets and consoles. The game can cost around €20.00 depending on what device you are using it on."
// //                 "In Minecraft, players explore a blocky, procedurally generated 3D world with virtually infinite terrain, and may discover and extract raw materials, craft tools and items, and build structures, earthworks and simple machines. Depending on game mode, players can fight computer-controlled mobs, as well as cooperate with or compete against other players in the same world. Game modes include a survival mode, in which players must acquire resources to build the world and maintain health, "
// //                 "and a creative mode where players have unlimited resources and access to flight. Players can modify the game to create new gameplay mechanics, items, and assets.",
// //                 style:TextStyle(fontFamily: "fonttm"),overflow: TextOverflow.ellipsis,maxLines:40),
// //           )
// //         ], )
// //       ]),)
// //     ],
// //
// //     )) ;}}
//
// //  Column(children: [Padding(
// //   padding: const EdgeInsets.only(top: 42, left: 15),
// //   child: Container(width: 300,
// //       height: 50,
// //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color.fromRGBO(255, 255, 255, 1),border: Border.all(color:Color.fromRGBO(217,217,217,1))),
// //           child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
// //           children: [
// //             Text("Search Products", style: TextStyle(
// //                 fontWeight: FontWeight.w400,
// //                 fontSize: 14,
// //                 color: Color.fromRGBO(174, 174, 174, 1)
// //             ),),
// //             Icon(Icons.search)
// //           ]
// //       )
// //   ),
// // )
// //   ,
// //   Row(children:[Padding(
// //   padding: const EdgeInsets.only(top:14, left: 14, right: 12),
// //   child: Container(width: 225, height: 102, decoration: BoxDecoration
// //     (image: DecorationImage(image: AssetImage("asset/house1.jpg")),
// //       borderRadius: BorderRadius.circular(12),gradient: LinearGradient(
// //           colors:[ Colors.red,Colors.grey] )),
// //     child: Column(crossAxisAlignment: CrossAxisAlignment.center,
// //         children: [Padding(
// //           padding: const EdgeInsets.only(top: 15.0, left:47),
// //           child: Icon(Icons.doorbell),
// //           // SvgPicture.asset("../asset/svg1.svg"),
// //         ),
// //           Padding(
// //             padding: const EdgeInsets.only(top:13, left:27),
// //             child: Text("All Categories", style: TextStyle(
// //                 fontWeight: FontWeight.w700,
// //                 fontSize: 12,
// //                 color: Color.fromRGBO(255, 242, 238, 1)
// //             )),
// //           )
// //         ]
// //     ),
// //   ),),
// //   Container(width: 90,
// //       height: 102,
// //       decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1),border: Border.all(color:Color.fromRGBO(217,217,217,1)),
// //           borderRadius: BorderRadius.circular(12)),
// //       child: Column
// //         (children: [Padding(
// //         padding: const EdgeInsets.only(top: 14.0),
// //         child: Icon(
// //             Icons.percent, color: Color.fromRGBO(233, 131, 101, 1)),
// //       ),
// //         Text("Sales", style: TextStyle(fontWeight: FontWeight.w700,
// //             fontSize: 12,
// //             color: Color.fromRGBO(233, 131, 101, 1))
// //
// //         )
// //       ],
// //           ))
// // ],
// // ),
// //
// //         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //        children: [Padding(
// //          padding: const EdgeInsets.only(top:19, left:41, bottom:15),
// //          child: Text("New Products", style: TextStyle(fontWeight: FontWeight.w600,
// //              fontSize: 18, color: Color.fromRGBO(50, 32, 56, 1))),
// //        ),
// //      Padding(
// //        padding: const EdgeInsets.only(top:30, left:19, bottom:19),
// //        child: Icon(Icons.arrow_forward),
// //      )
// //      ],),
// //  // Container(
// //  //   height: MediaQuery.of(context).size.height-300,
// //  //   child: GridView.count(shrinkWrap:true,crossAxisSpacing: 10,mainAxisSpacing: 10,
// //  //         crossAxisCount: 2,
// //  //     // physics: NeverScrollableScrollPhysics(),
// //  //     children: List.generate(10, (index){
// //  //       return Column(children: [Image.asset("asset/phone.jpg", width: 175,height: 120),
// //  //         Text("Lorem Ipsum"),Text("200 TMT", style: TextStyle(color: Colors.red),)
// //  //       ]);}
// //  //    )
// //  //      ),
// //  // ),
// //    Container(height: MediaQuery.of(context).size.height-300,
// //    child: GridView.builder(itemCount:10,
// //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
// //     itemBuilder: (BuildContext context, int index){
// //       return Column(children: [Image.asset("asset/phone.jpg", width: 175,height: 120),
// //             Text("Lorem Ipsum"),Text("200 TMT", style: TextStyle(color: Colors.red),)
// //           ]);}
// //     ),
// //    )
// //
// //     ]);
// //   }
// // }
//
// //Toast Lesson and Homework
//
// // class Liste extends StatefulWidget {
// //
// //   @override
// //   State<Liste> createState() => _ListeState();
// // }
// //
// // class _ListeState extends State<Liste> {
// //
// //   List surat = ["asset/oranges.jpg",
// //     "asset/apple.jpg",
// //     "asset/banana.jpg",
// //     "asset/peppers.jpg",
// //     "asset/cherries.jpg",
// //     "asset/oranges.jpg",
// //     "asset/apple.jpg",
// //     "asset/banana.jpg",
// //     "asset/peppers.jpg",
// //     "asset/cherries.jpg"];
// //   List miwe = ["Oranges", " Apples", "Peppers", "Banana", "Cherry","Oranges", " Apples", "Peppers", "Banana", "Cherry"];
// //   FToast? fToast;
//
// // @override
// // void initState() {
// //   super.initState();
// //   fToast = FToast();
// //   fToast!.init(context);
// // }
// // @override
// // Widget build(BuildContext context) {
// //   return ListView.builder(itemCount: surat.length,
// //       itemBuilder: (context, index) =>
// //           Card(child:
// //           InkWell(onTap: ()
// //   {  _showToast("onTap"); },
// //             onLongPress: () {
// //               _showToast("onLongPress");
// //             },
// //             leading: Image.asset("${surat[index]}", height: 60, width: 60),
// //             title: Text("${miwe[index]}"),
// //             subtitle: Column(mainAxisAlignment: MainAxisAlignment.start,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [Text("Fruit"),
// //                   Text("2 kg")]),
// //             trailing: Column(children:
// //             [ Icon(Icons.close), Text("\$15.55",
// //               style: TextStyle(color: Colors.green),)
// //             ],),
// //           )
// //           )
// //   );
// // }
// //
// // _showToast(String a) {
// //   Widget toast = Container(
// //     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// //     decoration: BoxDecoration(
// //       borderRadius: BorderRadius.circular(25.0),
// //       color: Colors.yellow,
// //     ),
// //     child: Row(
// //       mainAxisSize: MainAxisSize.min,
// //       children: [
// //         Icon(Icons.waving_hand_outlined),
// //         SizedBox(
// //           width: 12.0,
// //         ),
// //         Text(a),
// //       ],
// //     ),
// //   );
// //
// //   fToast!.showToast(
// //       child: toast,
// //       toastDuration: Duration(seconds: 3),
// //       positionedToastBuilder: (context, child) {
// //         return Positioned(
// //           child: child,
// //           top: 100.0,
// //           left: 90.0,
// //         );
// //       });}
// //
// //
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(itemCount: surat.length,
// //         itemBuilder: (context, index) =>
// //             Card(child:
// //             ListTile(onTap: () {
// //               debugPrint("onTap");
// //               // _showToast();
// //               alertDiag();
// //             },
// //               onLongPress: () {
// //                 debugPrint("onLongPress");
// //                 // _showToast();
// //               },
// //               leading: Image.asset("${surat[index]}", height: 60, width: 60,),
// //               title: Text("${miwe[index]}"),
// //               subtitle: Column(mainAxisAlignment: MainAxisAlignment.start,
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [Text("Fruit"),
// //                     Text("2 kg")]),
// //               trailing: Column(children:
// //               [ Icon(Icons.close), Text("\$15.55",
// //                 style: TextStyle(color: Colors.green),)
// //               ],),
// //             )
// //             )
// //     );
// //   }
// //
// //   _showToast() {
// //     Widget toast = Container(
// //       padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(25.0),
// //         color: Colors.white,
// //       ),
// //       child: Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Icon(Icons.waving_hand_outlined),
// //           SizedBox(
// //             width: 12.0,
// //           ),
// //           Text("Return and buy more"),
// //         ],
// //       ),
// //     );
// //     fToast!.showToast(
// //         child: toast,
// //         toastDuration: Duration(seconds: 3),
// //         positionedToastBuilder: (context, child) {
// //           return Positioned(
// //             child: child,
// //             top: 100.0,
// //             left: 90.0,
// //           );
// //         });
// //   }
// //
// //
// // alertDiag(){
// //   showDialog(
// //     barrierDismissible: false,
// //     context: context,
// //         // barrierColor: Colors.pink,
// //         builder: (context){
// //       return AlertDialog(backgroundColor: Colors.white,
// //         title: Row(mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text("Are you sure to quit?"),
// //           ],
// //         ),
// //         // content: Text("cyndanamy"),
// //         actions: [
// //           // ignore: deprecated_member_use
// //           ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)), onPressed: () {_showToast();
// //
// //           },child: Text("Quit", style: TextStyle(color: Colors.red),)),
// //           // ignore: deprecated_member_use
// //           ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)), onPressed: () {Navigator.pop(context);},
// //             child:Text("Cancel", style: TextStyle(color: Colors.grey)) )
// //         ],
// //       );
// //         } );}}
//
// //      return Column(
// //      children: [
// //        Stack(
// //          children: [CircleAvatar(backgroundColor: Colors.red,
// //            child: Icon(Icons.person)),
// //            Positioned(right:0, bottom:0,
// //              child: CircleAvatar(radius:8, backgroundColor: Colors.green, child:Text("2", style: TextStyle(color: Colors.white,
// //              fontSize: 10),)),
// //            ),]
// //                ),
// //        Container(width: MediaQuery.of(context).size.width,
// //          height: MediaQuery.of(context).size.height-100,
// //          color: Colors.amber,
// //          child: Text(MediaQuery.of(context).size.width.toString()
// //             ),
// //
// //
// //        )
// //      ],
// //     );
// //   }
// // }
