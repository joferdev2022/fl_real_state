import 'package:feed_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [Page1(), HomePage()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/cover_banner2.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          // Text(
          //   'REAL STATE',
          //   style: textStyle,
          // ),
          Text(
            'PANZONES',
            style: textStyle,
          ),
          // Icon(
          //   Icons.real_estate_agent_outlined,
          //   color: Colors.black,
          //   size: 100,
          // ),
          Expanded(child: Container()),
          Text(
            'deslizar',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 100,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
