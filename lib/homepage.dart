import 'package:day18/4thpart.dart';
import 'package:day18/secondpart.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.white, actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
        ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                "Travel Blog",
                style: Textfctn(32, Colors.black, FontWeight.bold),
              ),
            ),
            Expanded(flex: 2, child: PageviewDemo()),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: Textfctn(
                      24,
                      Colors.black,
                    ),
                  ),
                  Text(
                    "View All",
                    style: Textfctn(
                      24,
                      Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 1, child: ListviewDemo()),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Container(
                height: 5,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Textfctn(double size, Color clr, [FontWeight? fw]) {
    return TextStyle(
      fontSize: size,
      color: clr,
      fontWeight: fw,
    );
  }
}
