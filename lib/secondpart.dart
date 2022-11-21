import 'package:day18/Model/modelclass.dart';
import 'package:flutter/material.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({super.key});

  @override
  State<PageviewDemo> createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  var modelclass = Modelclass.travelfctn();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: PageView.builder(
            itemCount: modelclass.length,
            itemBuilder: ((context, index) {
              var travellist = modelclass[index];
              return Stack(
                children: [
                  Image.network(
                    travellist.photo,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 0.8,
                  ),
                  Positioned(
                      bottom: 120,
                      left: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            travellist.placename,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            travellist.addressname,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  Positioned(
                    right: 10,
                    bottom: 5,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.orange,
                      child: Center(
                          child: Icon(
                        Icons.arrow_forward,
                        size: 35,
                        color: Colors.white,
                      )),
                    ),
                  )
                ],
              );
            })),
      )),
    );
  }
}
