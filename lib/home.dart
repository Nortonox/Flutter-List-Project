import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color.fromARGB(255, 22, 22, 22),
          shadowColor: Color.fromARGB(0, 255, 255, 255),
          title: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home,
                size: 50,
              ),
              Text("Home")
            ],
          ))),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "Sınıf Seçiniz",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: SizedBox(
              width: 500,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 22, 22, 22)),
                child: Text("11-E"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sinif11e()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
