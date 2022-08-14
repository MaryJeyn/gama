import 'package:flutter/material.dart';
import 'package:lesson/list/change_t.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Dark and Light mode"),
            actions: [
ThemeChange(),
            ],
          ),
          body: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 200,
                          child: Image.asset("asset/daisy.jpg",
                            fit: BoxFit.contain,),
                        ),
                        list(),
                        list(),
                        list(),
                        list(),
                      ],
                    )
                  ]))
            ],
          ),
        ));
  }

  list(){
    return Column(
      children: [
        // kategoriyanyn ady
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 9, 0, 9),
                child: Text("Arzanladysdaky harytlar",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Text("Hemmesi",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),),
                    ),
                    Icon(Icons.arrow_forward_ios,
                      size: 12,
                    color:Theme.of(context).textTheme.headline1!.color,)
                  ],
                ),
              )
            ],
          ),
        ),

        // list
        Container(
          height: 290,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index)=>
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    margin: EdgeInsets.only(left: 8, top: 10, right: 7, bottom: 20),
                    width: MediaQuery.of(context).size.width / 2 - 16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).cardColor,
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context).shadowColor,
                              spreadRadius: 0,
                              blurRadius: 3,
                              offset: Offset(0, 0))
                        ]
                    ),
                    child: Column(
                      children: [
                        // surat
                        Container(
                          height: 130,
                          padding: EdgeInsets.only(top: 20, left: 6,right: 6),
                          child: Image.asset("asset/daisy.jpg",
                            fit: BoxFit.contain,),
                        ),
                        // ady
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                            child: Text(
                              "Sampunlar Head & Shoulders tamizlik gowy saclar",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,//ellipsis -3 nokat  //fade - yitip gidya,
                              softWrap: false,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),

                        //bahalar
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("100 manat",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.orangeAccent
                                ),),
                              Text("120 manat",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                ),)
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            debugPrint("Sebede gosuldy");
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 20, right: 20, top: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart_outlined,
                                  size: 13,
                                  color: Colors.grey,),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Sebede gos",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12
                                    ),),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
          ),
        )
      ],
    );
  }
}












class SharedPref extends StatefulWidget {
  const SharedPref({Key? key}) : super(key: key);

  @override
  State<SharedPref> createState() => _SharedPrefState();
}


class _SharedPrefState extends State<SharedPref> {
  var formKey=GlobalKey<FormState>();
  String? ady;
  int? id;
  bool? jynsy;
  var shared;


void initState(){
  super.initState();
  SharedPreferences.getInstance().then((value) => shared=value);
}

void dispose(){
  shared.dispose();
  super.dispose();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title: Text("Shared Preference"),),
body:SingleChildScrollView(child:Column(children: [
  Form(key:formKey, child:Column(children: [
    //ady
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(onSaved: (value){setState(() {
        ady=value;
      });},
        keyboardType: TextInputType.name,
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color:Colors.blue)), labelText:"Adynyzy girizin"),
      ),
    ),
    //id
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(onSaved: (value){setState(() {
        id=int.parse(value!);
      });},
        keyboardType: TextInputType.name,
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color:Colors.blue)), labelText:"ID girizin"),
      ),
    ),
    RadioListTile(value: true,
        groupValue: jynsy,
        onChanged:(value){setState(() {

       jynsy=value as bool?;}); },
    title:Text("Erkek"),),
    RadioListTile(value: false,
      groupValue: jynsy,
      onChanged:(value){setState(() {

        jynsy=value as bool?;}); },
      title:Text("Ayal"),),

  ],)),
  Row(children: [
    ElevatedButton(onPressed: write,
  child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Write"),
  ) ),
    ElevatedButton(onPressed: read,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Read"),
        ) ),
    ElevatedButton(onPressed: delete,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Delete"),
        ) ),
     ],
  ),
],))
    );
  }

  void write()async {
  formKey.currentState?.save();
  await(shared as SharedPreferences).setString(("myName"), ady!);
  await(shared as SharedPreferences).setInt("myID", id!);
  await(shared as SharedPreferences).setBool("key", jynsy!);
  }

  void read() {
  debugPrint("menin adym ${(shared as SharedPreferences).getString("myName")}");
  debugPrint("menin id ${(shared as SharedPreferences).getInt("myID").toString()}");
  debugPrint("true or false ${(shared as SharedPreferences).getBool("key").toString()}");

  }

  void delete() {
    (shared as SharedPreferences).remove("myID");
    (shared as SharedPreferences).remove("myName");
    (shared as SharedPreferences).remove("key");
  }
}



class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(child:
        Column(crossAxisAlignment:CrossAxisAlignment.center, mainAxisAlignment:MainAxisAlignment.center,
          children: [
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Text("Welcome to IT English", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset("asset2/welcome.jpg"),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text("Learn English for IT:\n basic vocabulary, abbreviations, slang, skills ", textAlign: TextAlign.center,
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(child:Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [CircleAvatar(radius:40,backgroundImage:AssetImage("asset2/cup.jpg")),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Is IT your cup of tea?"),
                    TextButton.icon(onPressed: (){}, icon: Text("test yourself"), label:Icon(Icons.arrow_forward)),
                  ],
                )
            ],)),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CircleAvatar(radius:20,backgroundImage:AssetImage("asset2/launch.jpg")),
            ),
            Text("Powered by Launch Life")
        ],)
      ),
    )
    );
  }
}

//Practice widgets

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  bool selected = false;
  double opacityLevel = 1.0;
  int _index = 0;
  int _count = 0;
  double turns = 0.0;
  bool isSameAddress = true;
  final TextEditingController shippingAddress1 = TextEditingController();
  final TextEditingController shippingAddress2 = TextEditingController();
  final TextEditingController billingAddress1 = TextEditingController();
  final TextEditingController billingAddress2 = TextEditingController();

  final TextEditingController creditCardNumber = TextEditingController();
  final TextEditingController creditCardSecurityCode = TextEditingController();

  final TextEditingController phoneNumber = TextEditingController();

  void _changeRotation() {
    setState(() => turns += 1.0 / 8.0);
  }
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Scrollbar(thickness: 15,isAlwaysShown: true,
      radius: Radius.circular(20),
      child: SingleChildScrollView(child:Column
        (children: [
          //Rich Text
        Text("1.RichText",style:TextStyle(color: Colors.red)),
        RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(text: 'bold', style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w700)),
              TextSpan(text: ' world!'),
            ],
          ),
        ),
        //AbsorbPointer
        Text("2.AbsorbPointer", style:TextStyle(color: Colors.red)),
        Stack(
        alignment: AlignmentDirectional.center,
      children: <Widget>[
      SizedBox(
      width: 200.0,
      height: 100.0,
      child: ElevatedButton(
      onPressed: () {},
      child: null,
      ),
      ),
      SizedBox(
      width: 100.0,
      height: 200.0,
      child: AbsorbPointer(
      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
      primary: Colors.blue.shade200,
      ),
      onPressed: () {},
      child: null,
      ),
      ),
      ),
      ],
      ),
        //AnimatedAlign
        Text("3.AnimatedAlign", style:TextStyle(color: Colors.red)),
        GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 3),
                curve: Curves.fastOutSlowIn,
                child: Image.asset("asset/apple.jpg", height:50, width: 50,),
              ),
            ),
          ),
        ),
        Text("4.AnimatedOpacity",style:TextStyle(color: Colors.red)),
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 3),
            child: InkWell(onTap: (){
              setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
            },child: Image.asset("asset/banner.jpg")),
          ),
        ],),
      //The BottomSheet widget itself is rarely used directly. Instead, prefer to create a
        // persistent bottom sheet with ScaffoldState.showBottomSheet or Scaffold.bottomSheet,
        // and a modal bottom sheet with showModalBottomSheet.
      Text("5.BottomSheet", style:TextStyle(color: Colors.red)),
        Center(
      child: ElevatedButton(
      child: const Text("tapBottomSheet"),
      onPressed: () {
      showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
      return Container(
      height: 200,
      color: Colors.amber,
      child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
      const Text('Modal BottomSheet'),
      ElevatedButton(
      child: const Text('Close BottomSheet'),
      onPressed: () => Navigator.pop(context),
      )
      ],
      ),
      ),
      );
      },
      );
      },
      ),
      ),

        //DataTable
        Text("6. DataTable",style:TextStyle(color: Colors.red)),
        DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Maral')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Jeren')),
                DataCell(Text('23')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Olga')),
                DataCell(Text('27')),
                DataCell(Text('Student')),
              ],
            ),
          ],
        ),
          //Wrap lays out each child and attempts to place the child adjacent to
        // the previous child in the main axis, given by direction, leaving spacing space in between.
        // If there is not enough space to fit the child, Wrap creates a new run adjacent to the existing children in the cross axis.
          Text("7.Wrap", style:TextStyle(color: Colors.red)),
          Wrap(
            spacing: 2.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: <Widget>[
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
            label: const Text('Ahmed'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JE')),
            label: const Text('Jeren'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AY')),
            label: const Text('Ayna'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('SA')),
            label: const Text('Sapar'),),]),
        Text("8.Stepper", style:TextStyle(color: Colors.red)),
        Stepper(
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (_index <= 0) {
              setState(() {
                _index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: <Step>[
            Step(
              title: const Text('Step 1 Application'),
              content: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Content for Step 1')),
            ),
            const Step(
              title: Text('Step 2 Cover Letter'),
              content: Text('Content for Step 2'),
            ),
          ],
        ),

//FittedBox

Text("9.FittedBox",style:TextStyle(color: Colors.red)),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2,
                  color: Colors.green
              )
          ),
          child: Text("Text does NOT fit"),
          width: 80,
          height: 20,
        ),

        SizedBox(
          height: 12,
        ),

        // With FittedBox

        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2,
                color: Colors.green),
          ),
          child: FittedBox(
              child: Text('This text DOES fit in the box')
          ),
          width: 80,
          height: 20,
        ),
        SizedBox(height: 12),

        //RotatedBox a widget that rotates its child by a integral number of quarter turns.
        Text("10.RotatedBox", style:TextStyle(color: Colors.red)),
        const RotatedBox(
          quarterTurns: 5,
          child: Text('Hello World!'),
        ),
        Text("11.AnimatedSwitcher", style:TextStyle(color: Colors.red)),
        Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Text(
                  '$_count',
                  // This key causes the AnimatedSwitcher to interpret this as a "new"
                  // child each time the count changes, so that it will begin its animation
                  // when the count changes.
                  key: ValueKey<int>(_count),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              ElevatedButton(
                child: const Text('Increment'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
        ),
        // Spacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.
        Text("12.Spacer", style:TextStyle(color: Colors.red)),

        Row(
          children: const <Widget>[
            Text('Begin'),
            Spacer(), // Defaults to a flex of one.
            Text('Middle'),
            // Gives twice the space between Middle and End than Begin and Middle.
            Spacer(flex: 2),
            Text('End'),
          ],
        ),

        Text("13.Table", style:TextStyle(color: Colors.red)),

        Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow( children: [
                    Column(children:[
                      Icon(Icons.account_box),
                      Text('My Account')
                    ]),
                    Column(children:[
                      Icon(Icons.settings),
                      Text('Settings')
                    ]),
                    Column(children:[
                      Icon(Icons.lightbulb_outline),
                      Text('Ideas')
                    ]),
                  ]),
                  TableRow( children: [
                    Icon(Icons.cake ),
                    Icon(Icons.voice_chat),
                    Icon(Icons.add_location),
                  ]),
                ],
              ),
            ),],),
        Text("14.AnimatedRotation", style:TextStyle(color: Colors.red)),
        Text("15.ClipOval", style:TextStyle(color: Colors.red)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _changeRotation,
              child: const Text('Tap Rotate'),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: ClipOval(child: Image.asset("asset/butterfly1.jpg")),
              ),
            ),
          ],
        ),
        Text("16.ScrollBar", style:TextStyle(color: Colors.red)),

],
      )
      ),
    ),));
  }
}

//17.ListWheelScrollView
class Wheel extends StatefulWidget {
  const Wheel({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: ListWheelScrollView(
        itemExtent: 100,

        // diameterRatio: 1.6,
        // offAxisFraction: -0.4,
        // squeeze: 0.8,

        // DEPRECATED : clipToSize does not exist anymore.
        // USe clipBehaviour instead.

        // clipToSize: true,

        clipBehavior: Clip.antiAlias,
        children: const <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 1',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 2',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 3',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 4',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 5',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 6',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 7',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 8',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 1",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 3",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 4",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 5",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 6",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 7",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Item 8",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}

//18.Flow A widget that sizes and positions children efficiently, according to the logic in a FlowDelegate.
class FlowMenu extends StatefulWidget {
  const FlowMenu({Key? key}) : super(key: key);

  @override
  State<FlowMenu> createState() => _FlowMenuState();
}

class _FlowMenuState extends State<FlowMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) {
      setState(() => lastTapped = icon);
    }
  }

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  Widget flowMenuItem(IconData icon) {
    final double buttonDiameter =
        MediaQuery.of(context).size.width / menuItems.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RawMaterialButton(
        fillColor: lastTapped == icon ? Colors.amber[700] : Colors.blue,
        splashColor: Colors.amber[100],
        shape: const CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed
              ? menuAnimation.reverse()
              : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 45.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
      children:
      menuItems.map<Widget>((IconData icon) => flowMenuItem(icon)).toList(),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}

