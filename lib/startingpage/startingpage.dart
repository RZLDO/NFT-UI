import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nftproject/started/startedpage.dart';
import 'package:nftproject/widgets/bigtext.dart';
import 'package:nftproject/widgets/buttonwidget.dart';
import 'package:nftproject/widgets/smalltext.dart';
import '../colorapp.dart';
import 'package:nftproject/widgets/icon.dart';

class startingPage extends StatelessWidget {
  const startingPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("heigt: " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  "asset/image/NFT2.jpg",
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              top: 60,
              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconApp(icon: Icons.arrow_back_ios_new),
                  IconApp(icon: Icons.heart_broken_outlined)
                ],
              )),
          Positioned(
              top: 520,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1f2a40).withOpacity(0.95),
                    ),
                    child: Column(
                      children: [
                        BigText(
                          text: "1,11K",
                          size: 22,
                        ),
                        SmallText(text: "items")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1f2a40).withOpacity(0.95),
                    ),
                    child: Column(
                      children: [
                        BigText(
                          text: "546",
                          size: 22,
                        ),
                        SmallText(text: "owners")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1f2a40).withOpacity(0.95),
                    ),
                    child: Column(
                      children: [
                        BigText(
                          text: "176",
                          size: 22,
                        ),
                        SmallText(text: "floor price")
                      ],
                    ),
                  ),
                ],
              )),
          Positioned(
              bottom: 80,
              left: 40,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Cyber Pro Collection",
                        size: 18,
                      ),
                      Container(
                        width: 300,
                        child: SmallText(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae lorem laoreet, rhoncus mi non, fermentum risus. Nulla lacinia ex dictum, suscipit ex quis, vulputate nisl."),
                      )
                    ]),
              )),
          Positioned(
              bottom: 10,
              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => StartedPage());
                      Navigator.push(context, route);
                    },
                    child: ButtonWidget(
                        color: Colors.white,
                        text: "Items",
                        fontColor: Color(0xFF121c29),
                        widht: 160),
                  ),
                  ButtonWidget(
                      color: Color(0xFF121c29),
                      text: "Activity",
                      fontColor: Colors.white,
                      widht: 160)
                ],
              ))
        ],
      ),
    );
  }
}
