import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 4, 28, 49),
      ),
      body: SingleChildScrollView(
        child: Container(child: Image.asset('assets/word_images/body.jpg')),
      ),
    );
  }
}
