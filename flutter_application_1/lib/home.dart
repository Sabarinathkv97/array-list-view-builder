import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array listview sample'),
      ),
      body: ListView.builder(
        itemCount: addlist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber[200],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            addlist[index].name,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            addlist[index].number.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  List<listadd> addlist = [
    listadd(name: 'manu', number: 11111),
    listadd(name: 'peeli', number: 22222),
    listadd(name: 'vava', number: 33333),
    listadd(name: 'lolan', number: 44444),
    listadd(name: 'jijo', number: 55555),
    listadd(name: 'jango', number: 66666),
    listadd(name: 'alexa', number: 77777),
  ];
}

class listadd {
  String name;
  int number;
  listadd({required this.name, required this.number});
}
