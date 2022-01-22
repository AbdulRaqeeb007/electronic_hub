import 'package:electronic_hub/default.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';

class homecard extends StatelessWidget {
  const homecard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image, title;

  @override
  Widget build(BuildContext context) {
    // press() {
    //   Get.to(PostDetailScreen(
    //       title: title, country: country, price: price, image: image));
    // }

    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding, left: 10, right: 10),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width / 2,
            height: 180,
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(.23))
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: title,
                              style: TextStyle(color: Colors.white)),
                        ])),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
