import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("Epic counter to count anything"),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [Center(
            child: Text(
              "$count",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
            ),),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              icon: const Icon(Icons.restart_alt_outlined)
          ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple[700],
        foregroundColor: Colors.white,
      ),
    );
  }
}
