import 'package:flutter/material.dart';
import 'package:nftproject/home/homepage.dart';
import 'package:nftproject/widgets/buttonwidget.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  "asset/image/NFT6.jpg",
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              bottom: 20,
              left: 30,
              right: 30,
              child: GestureDetector(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => HomePage());
                  Navigator.push(context, route);
                },
                child: ButtonWidget(
                    color: Colors.white.withOpacity(0.85),
                    text: "Get Started",
                    fontColor: Color(0xFF121c29),
                    widht: 300),
              )),
          Positioned(
            left: 50,
            right: 30,
            bottom: 200,
            child: Text(
              "DISCOVER",
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white.withOpacity(0.8),
                  fontFamily: 'Badgrunge'),
            ),
          ),
          Positioned(
            right: 100,
            bottom: 140,
            child: Text(
              "NFT",
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white.withOpacity(0.8),
                  fontFamily: 'Badgrunge'),
            ),
          ),
          Positioned(
            right: 50,
            bottom: 80,
            child: Text(
              "COLLECTION",
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white.withOpacity(0.8),
                  fontFamily: 'Badgrunge'),
            ),
          ),
        ],
      ),
    );
  }
}
