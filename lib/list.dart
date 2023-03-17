import 'dart:ui';

import 'package:flutter/material.dart';

class sinif11e extends StatelessWidget {
  List foto = [
/*Add photos here*/
  ];
  List isim = [
    /*Add Names Here*/
  ];
  List numara = [
/*Add Numbers Here*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Color.fromARGB(255, 22, 22, 22),
          shadowColor: Color.fromARGB(0, 255, 255, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              Icon(
                Icons.school,
                size: 50,
              ),
              Text(/*Name of the list*/ ""),
              Spacer(
                flex: 3,
              )
            ],
          )),
      body: ListView.builder(
        itemCount: 23,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            color: Color.fromARGB(255, 22, 22, 22),
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 55.0,
                    height: 55.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundColor: Color.fromARGB(255, 22, 22, 22),
                      backgroundImage: AssetImage(foto[index]),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isim[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        numara[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
