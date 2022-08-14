import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';

class Toleg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TolegState();
  }
}

class TolegState extends State<Toleg> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2.0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
        onPressed: () {Navigator.pop(context);}, ),
        backgroundColor:
        Color.fromRGBO(236,42,42,1),elevation:10,shadowColor: Colors.grey, centerTitle: true, title: Text("Töleg",
            style: TextStyle(fontWeight: FontWeight.w800,
                fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1))),),
        body: Column(
          children: [
                       Padding(
                         padding: const EdgeInsets.only(top:20.0),
                         child: Card(elevation: 10,child: Image.asset("asset/card.jpg")),
                       ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CreditCardForm(
                      formKey: formKey,
                      obscureCvv: true,
                      obscureNumber: true,
                      cardNumber: cardNumber,
                      cvvCode: cvvCode,
                      isHolderNameVisible: true,
                      isCardNumberVisible: true,
                      isExpiryDateVisible: true,
                      cardHolderName: cardHolderName,
                      expiryDate: expiryDate,
                      themeColor: Colors.blue,
                      textColor: Colors.black87,
                      cardNumberDecoration: InputDecoration(
                        labelText: "Kart nomeri",
                        hintText: "XXXX XXXX XXXX XXXX",
                        hintStyle: const TextStyle(color: Colors.black87),
                        labelStyle: const TextStyle(color: Colors.black87),
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      expiryDateDecoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.black87),
                        labelStyle: const TextStyle(color: Colors.black87),
                        focusedBorder: border,
                        enabledBorder: border,
                        labelText: "Gutarýan senesi",
                        hintText: "XX/XX",
                      ),
                      cvvCodeDecoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.black87),
                        labelStyle: const TextStyle(color: Colors.black87),
                        focusedBorder: border,
                        enabledBorder: border,
                        labelText: "CVV",
                        hintText: "XXX",
                      ),
                      cardHolderDecoration: InputDecoration(
                        hintStyle: const TextStyle(color: Colors.black87),
                        labelStyle: const TextStyle(color: Colors.black87),
                        focusedBorder: border,
                        enabledBorder: border,
                        labelText: 'Kart eýesi',
                      ),
                      onCreditCardModelChange: onCreditCardModelChange,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        primary: Colors.redAccent,
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(12),
                        child: const Text(
                          "Töleg et",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print('dogry!');
                        } else {
                          print('nädogry!');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
