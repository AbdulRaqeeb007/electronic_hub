import 'package:electronic_hub/screen/signUpscreen.dart';
import 'package:flutter/material.dart';
import 'package:electronic_hub/default.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

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
          body: SingleChildScrollView(
            child: Column(
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
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 5.0,
                        color: Colors.white,
                      ),
                      primary: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: size.height * .0533),
                    )),
                SizedBox(
                  height: size.height * .0455,
                ),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => signUp()),
                      // );
                      Get.to(signUp());
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 5.0,
                        color: kPrimaryColor,
                      ),
                      primary: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: size.height * .0533, color: kPrimaryColor),
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

// class button extends StatelessWidget {
//   const button({
//     Key? key,
//     required this.size,
//   }) : super(key: key);

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

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
