import 'package:flutter/material.dart';

class DayFive extends StatefulWidget {
  const DayFive({super.key});

  @override
  State<DayFive> createState() => _DayFiveState();
}

class _DayFiveState extends State<DayFive> {
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
          title: Text(
            'Day 5',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: nameList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(nameList[index]['pp'] ?? 'Null'),
              ),
              title: Text(nameList[index]['name']),
              subtitle: Text(nameList[index]['email']),
              trailing: Icon(Icons.check_circle,color:Colors.blue,),
            );
          },
        ));
  }
}
