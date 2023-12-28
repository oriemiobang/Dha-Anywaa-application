import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jap dëër dhaanhø',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 4, 28, 49),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset('assets/word_images/body_parts1.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/word_images/body_part2.jpg'),
          ),
        ]),
      ),
    );
  }
}
