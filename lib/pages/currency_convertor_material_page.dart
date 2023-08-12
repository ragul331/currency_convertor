import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
   const CurrencyConverterMaterialPage({super.key});


  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  int result=0;
  final TextEditingController textEditingController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border= OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueGrey,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(50)
      ),
    );
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter',style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,

      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.currency_rupee,color: Colors.white,weight: 100,size: 45,),
                    Text('$result',
                      style: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 253, 253, 253),
                      ),
                    ),
                  ],
                ),
            ),
            Container(
              padding: const EdgeInsets.all(
                  8.0
              ),
              child:  TextField(
                controller: textEditingController,
                style: const TextStyle(
                    color: Colors.black
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.attach_money),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder:border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(onPressed: () {

                  setState(() {
                  result=(int.parse(textEditingController.text)*81);
                });
              },
                style: TextButton.styleFrom(
                    backgroundColor:  Colors.black,
                    foregroundColor:  Colors.white,
                    minimumSize:  const Size(double.infinity, 50),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),

                child: const Text('Convert'),

              ),
            )
          ],
        ),
      ),
    );
  }
}




