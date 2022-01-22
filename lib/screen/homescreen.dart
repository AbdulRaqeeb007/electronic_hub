// ignore_for_file: prefer_const_constructors

import 'package:electronic_hub/default.dart';
import 'package:electronic_hub/screen/homecard.dart';
import 'package:electronic_hub/screen/signInscreen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  data_map() {
    Map tempData = {
      "PLC": "asset/plc1.jpg",
      "PCB": "asset/pcb2.jpg",
      "Home Appliances": "asset/appliance3",
      "Components": "asset/components3.jpg",
      "Repairing": "asset/repair2.jpg",
      "Fabrication": "asset/feb1.jgp"
    };
    final mapEntries = tempData.entries.toList();
    //you to fined the lenght of map
    print(tempData);
    print(mapEntries[1].key);
  }

  Map tempData = {
    "PLC": "asset/plc1.jpg",
    "PCB": "asset/pcb2.jpg",
    "Home Appliances": "asset/appliance3.jpg",
    "Components": "asset/components3.jpg",
    "Repairing": "asset/repair2.jpg",
    "Fabrication": "asset/feb1.jpg"
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("asset/home3.jpg"))),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              color: Colors.transparent,
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset(
                          0,
                          0,
                        ),
                        blurRadius: 12,
                        color: kPrimaryColor.withOpacity(.23)),
                  ]),
                  margin: EdgeInsets.only(
                      top: size.height * .1,
                      left: kDefaultPadding * 2.5,
                      right: kDefaultPadding * 2.5),
                  child: Center(
                    child: Text(
                      "Electronic Hub",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * .056,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: kPrimaryColor.withOpacity(.43),
                            blurRadius: 23,
                            offset: Offset(0, 0))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  height: size.height * .09,
                  width: size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: TextFormField(
                            cursorColor: kPrimaryColor,
                            controller: null,
                            style: TextStyle(fontSize: size.height * .0333),
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: kPrimaryColor.withOpacity(.5)),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: size.height * .3,
                    width: size.width,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            (MediaQuery.of(context).size.width / 2) /
                                (MediaQuery.of(context).size.height / 3),
                      ),
                      itemCount: tempData.length,
                      itemBuilder: (BuildContext context, index) {
                        // return Container();
                        return homecard(
                          title: tempData.entries.toList()[index].key,
                          image: tempData.entries.toList()[index].value,
                        );
                      },
                    ),
                  ),
                ),
              ]),
            )),
      ],
    );
  }
}
