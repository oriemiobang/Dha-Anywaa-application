import 'package:dha_anywaaa/body_part.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List bodyPartInfo = [
      BodyPart(number: 1, bodyPartName: "bodyPartName", soundUrl: "soundUrl"),
      BodyPart(number: 1, bodyPartName: "bodyPartName", soundUrl: "soundUrl"),
      BodyPart(number: 1, bodyPartName: "bodyPartName", soundUrl: "soundUrl"),
      BodyPart(number: 1, bodyPartName: "bodyPartName", soundUrl: "soundUrl"),
      BodyPart(number: 1, bodyPartName: "bodyPartName", soundUrl: "soundUrl"),
    ];

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
      body: ListView(
        children: [
          setImage('assets/word_images/body_parts1.jpg'),
          setImage('assets/word_images/body_part2.jpg'),
          bodyPartSound(bodyPartInfo),
        ],
      ),
    );
  }

  Widget setImage(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.asset(imageUrl),
    );
  }

  Widget bodyPartSound(bodyPartInfo) {
    return ListView.builder(
      shrinkWrap:
          true, // Ensure the ListView doesn't try to take infinite height
      physics:
          NeverScrollableScrollPhysics(), // Disable scrolling in the inner ListView
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(bodyPartInfo[index].bodyPartName),
          ),
        );
      },
    );
  }
}
