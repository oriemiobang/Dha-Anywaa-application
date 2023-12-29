import 'package:dha_anywaaa/body_part.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List bodyPartInfo = [
      BodyPart(number: 1, bodyPartName: "Wic", soundUrl: "soundUrl"),
      BodyPart(number: 2, bodyPartName: "Ceno", soundUrl: "soundUrl"),
      BodyPart(number: 3, bodyPartName: "goon", soundUrl: "soundUrl"),
      BodyPart(number: 4, bodyPartName: "Kaw", soundUrl: "soundUrl"),
      BodyPart(number: 5, bodyPartName: "Ec", soundUrl: "soundUrl"),
      BodyPart(number: 6, bodyPartName: "Tielo", soundUrl: "soundUrl"),
      BodyPart(number: 7, bodyPartName: "Lweedo", soundUrl: "soundUrl"),
      BodyPart(number: 8, bodyPartName: "Wicuung", soundUrl: "soundUrl"),
      BodyPart(number: 9, bodyPartName: "Otiel", soundUrl: "soundUrl"),
      BodyPart(number: 10, bodyPartName: "Ngut", soundUrl: "soundUrl"),
      BodyPart(number: 11, bodyPartName: "Lweedo", soundUrl: "soundUrl"),
      BodyPart(number: 12, bodyPartName: "Jier", soundUrl: "soundUrl"),
      BodyPart(number: 13, bodyPartName: "Geelwang", soundUrl: "soundUrl"),
      BodyPart(number: 14, bodyPartName: "Ith", soundUrl: "soundUrl"),
      BodyPart(number: 15, bodyPartName: "Lak", soundUrl: "soundUrl"),
      BodyPart(number: 16, bodyPartName: "Leep", soundUrl: "soundUrl"),
      BodyPart(number: 17, bodyPartName: "Tii", soundUrl: "soundUrl"),
      BodyPart(number: 18, bodyPartName: "Um", soundUrl: "soundUrl"),
      BodyPart(number: 18, bodyPartName: "wang", soundUrl: "soundUrl"),
      BodyPart(number: 18, bodyPartName: "Um", soundUrl: "soundUrl"),
      BodyPart(number: 18, bodyPartName: "Wang", soundUrl: "soundUrl"),
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
      itemCount: bodyPartInfo.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            height: 70,
            child: Center(
              child: ListTile(
                leading: Text(
                  '${bodyPartInfo[index].number}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                title: Text(
                  bodyPartInfo[index].bodyPartName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
