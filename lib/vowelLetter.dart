// ignore_for_file: empty_catches

import 'package:audioplayers/audioplayers.dart';
import 'package:dha_anywaaa/vowel.dart';
import 'package:flutter/material.dart';

class VowelLetter extends StatefulWidget {
  const VowelLetter({super.key});

  @override
  State<VowelLetter> createState() => _VowelLetterState();
}

class _VowelLetterState extends State<VowelLetter> {
  late AudioPlayer player;
  late AssetSource path;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  playAudio(path, isPlaying) async {
    try {
      if (isPlaying) {
        await player.pause();
        setState(() {
          isPlaying = false;
        });
      } else {
        await player.play(path);
        setState(() {
          isPlaying = true;
        });
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    bool isPlaying = false;
    // goore mo cwol ni cwaak ojabo
    List vowelLetter = [
      Vowel(capitalLetter: 'Ä', smallLetter: 'ä', sound: 'sound/Ä.mp3'),
      Vowel(capitalLetter: 'Ë', smallLetter: 'ë', sound: 'sound/Ë.mp3'),
      Vowel(capitalLetter: 'Ï', smallLetter: 'ï', sound: 'sound/Ï.mp3'),
      Vowel(capitalLetter: 'Ö', smallLetter: 'ö', sound: 'sound/Ö.mp3'),
      Vowel(capitalLetter: 'U', smallLetter: 'u', sound: 'sound/U.mp3'),

      // goore mo cwol ni cwaak odiyo
      Vowel(capitalLetter: 'A', smallLetter: 'a', sound: 'sound/A-1.MP3'),
      Vowel(capitalLetter: 'E', smallLetter: 'e', sound: 'sound/E.mp3'),
      Vowel(capitalLetter: 'I', smallLetter: 'i', sound: 'sound/I.mp3'),
      Vowel(capitalLetter: 'O', smallLetter: 'o', sound: 'sound/O.mp3'),
      Vowel(capitalLetter: 'Ø', smallLetter: 'ø', sound: 'sound/Ø.mp3'),
    ];

// Grid widget
    Widget vowelGrid(items, {myIndex = 0}) {
      return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          // crossAxisSpacing: 5.0,
          // mainAxisSpacing: 5.0,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            child: TextButton(
              onPressed: () {
                // playAudio(index + myIndex);
                setState(() {
                  // int currentIndex = index + myIndex;
                  path = AssetSource(vowelLetter[myIndex + index].sound);
                  playAudio(path, isPlaying);
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    items[index + myIndex].capitalLetter,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    items[index + myIndex].smallLetter,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Göörë moo cïp dwøl',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 4, 28, 49),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            vowelTitle('Göörë moo cwøl ni cwaak ojabø'),
            vowelGrid(vowelLetter),
            vowelTitle('Göörë moo cwøl ni cwaak odiyyø'),
            vowelGrid(vowelLetter, myIndex: 5)
          ],
        ),
      ),
    );
  }
}

Widget vowelTitle(String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 19.5,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
