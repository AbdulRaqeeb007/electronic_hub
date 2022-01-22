// ignore_for_file: prefer_const_constructors

import 'package:electronic_hub/default.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: signIn(),
    );
  }
}

class signIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("asset/ee1 (5).jpg"))),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                height: size.height * .25,
                width: size.width,
                child: Image(
                    color: Colors.white,
                    image: AssetImage('asset/logo/logo2.png')),
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 4.32,
                      color: kPrimaryColor.withOpacity(0.7))
                ]),
                child: Text(
                  "ElectronIc HuB",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.06),
                ),
              ),
              SizedBox(
                height: size.height * .0355,
              ),
              TextforField(
                controll: null,
                hinttext: 'Enter Email',
              ),
              SizedBox(
                height: size.height * .0155,
              ),
              TextforField(hinttext: "Enter Password", controll: null),
              SizedBox(
                height: size.height * .0455,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty(kPrimaryColor)),
                  child: Text("Log In"))
            ],
          ),
        )
      ],
    );
  }
}

class TextforField extends StatelessWidget {
  TextforField({required this.hinttext, required this.controll});
  final String hinttext;
  final controll;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      width: size.width * 1,
      decoration: BoxDecoration(
          color: kBackgroundColor, borderRadius: BorderRadius.circular(50)),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: TextFormField(
        controller: controll,
        style: TextStyle(fontSize: size.height * .0333),
        decoration: InputDecoration(
          hintText: "$hinttext",
          hintStyle: TextStyle(color: kPrimaryColor.withOpacity(.5)),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
