import 'package:flutter/material.dart';
import 'package:lesson/gama_hackathon/sign_up.dart';


import 'gama_hackathon/Dukanlar.dart';
import 'gama_hackathon/Esasy.dart';
import 'gama_hackathon/Sapaklar.dart';
import 'gama_hackathon/first_screen.dart';



void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Page1(
      ),),

  );
}
/* Navigator.push(context,MaterialPageRoute(builder: (context) =>ProductPage()));*/

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int bottomnavigationindex=0;
  final screens=[
    Esasy(),
    Sapaklar(),
    Dukanlar(),//Dukanlar
    Signup(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex:bottomnavigationindex,
        onTap: (index){
          setState((){ bottomnavigationindex=index;});
        },
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),//252, 106, 3, 1
            label: "Esasy",
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.video_collection),
            label: "Wideo Sapaklar",
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.shopping_cart),
            label: "Dukan",//Dukan
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.perm_identity_rounded),
            label: "Sahsy\nhasap"
          ),
        ],
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      body:IndexedStack(
          index:bottomnavigationindex,
          children:screens),
      //Esasy(),

    );
  }
}

