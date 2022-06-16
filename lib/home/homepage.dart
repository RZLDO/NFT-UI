import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nftproject/colorapp.dart';
import 'package:nftproject/home/widget/collectionlist.dart';
import 'package:nftproject/home/widget/listviewitem.dart';
import 'package:nftproject/widgets/bigtext.dart';
import 'package:nftproject/widgets/icon.dart';
import 'package:nftproject/widgets/smalltext.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Container(
        margin: EdgeInsets.only(
          top: 70,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.height,
              height: 50,
              decoration: BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(children: [
                Icon(
                  Icons.search,
                  color: AppColor.greyAccent,
                  size: 24,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search Items",
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: AppColor.greyAccent),
                )
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: "Categories",
                    size: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(image: "asset/image/NFT2.jpg", text: "Art"),
                  ListViewItem(image: "asset/image/NFT3.jpg", text: "Art"),
                  ListViewItem(image: "asset/image/NFT4.jpg", text: "Art"),
                  ListViewItem(image: "asset/image/NFT5.jpg", text: "Art"),
                  ListViewItem(image: "asset/image/NFT6.jpg", text: "Art"),
                  ListViewItem(image: "asset/image/NFT2.jpg", text: "Art"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: "Top Collections",
                    size: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: 330,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 2.0, color: AppColor.secondaryColor)),
                      margin: EdgeInsets.only(left: 25, right: 25, bottom: 20),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("asset/image/NFT" +
                                      index.toString() +
                                      ".jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SmallText(
                                      text: "Cyber Punk",
                                      size: 18,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    SmallText(
                                      text: "art,collection",
                                      size: 10,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        IconApp(
                                          icon: Icons.attach_money_outlined,
                                          size: 22,
                                        ),
                                        SmallText(
                                          text: "582,123.82",
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    SmallText(
                                      text: "28.2%",
                                      color: Colors.redAccent,
                                    )
                                  ],
                                ),
                              )
                            ]),
                          )
                        ],
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
