import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List<Map> nameList = [
    {
      "name": "Sirajul Islam",
      'email': "d@gmail.com",
      'pp': 'S',
    },
    {
      "name": "Sirajula Islam",
      'email': "d@gmail.com",
      'pp': 'S',
    },
    {
      "name": "Muhib Islam",
      'email': "d@gmail.com",
      'pp': 'S',
    },
    {
      "name": "Robi Islam",
      'email': "d@gmail.com",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Grid',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: nameList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Center(
                child: Text("${nameList[index]["name"]}"),
              ));
        },
      ),
    );
  }
}
