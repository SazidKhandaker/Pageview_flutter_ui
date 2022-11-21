import 'package:day18/Model/modelclass.dart';
import 'package:flutter/material.dart';

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({super.key});

  @override
  State<ListviewDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  var listclass = Modelclass.listfctn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listclass.length,
          itemBuilder: ((context, index) {
            var listvariable = listclass[index];
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network(
                    listvariable.photo,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listvariable.placename,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        listvariable.addressname,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            );
          })),
    );
  }
}
