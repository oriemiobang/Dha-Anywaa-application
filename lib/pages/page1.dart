import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:dha_anywaaa/letters_and_sound.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late AudioPlayer player;
  AssetSource path = AssetSource('');
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

  // playAudio(path, isPlaying) async {
  //   try {
  //     if (isPlaying) {
  //       await player.pause();
  //       setState(() {
  //         isPlaying = false;
  //       });
  //     } else {
  //       await player.play(path);
  //       setState(() {
  //         isPlaying = true;
  //       });
  //     }
  //   } catch (e) {}
  // }

  @override
  Widget build(BuildContext context) {
    // bool isPlaying = false;

    List letterAndSound = [
      LetterSound(capitalLetter: 'A', smallLetter: 'a', sound: 'sound/A-1.MP3'),
      LetterSound(capitalLetter: 'Ä', smallLetter: 'ä', sound: 'sound/Ä.mp3'),
      LetterSound(capitalLetter: 'B', smallLetter: 'b', sound: 'sound/B-1.mp3'),
      LetterSound(capitalLetter: 'C', smallLetter: 'c', sound: 'sound/C-1.mp3'),
      LetterSound(capitalLetter: 'D', smallLetter: 'd', sound: 'sound/D.mp3'),
      LetterSound(
          capitalLetter: 'Dh', smallLetter: 'dh', sound: 'sound/Dh.mp3'),
      LetterSound(capitalLetter: 'E', smallLetter: 'e', sound: 'sound/E.mp3'),
      LetterSound(capitalLetter: 'Ë', smallLetter: 'ë', sound: 'sound/Ë.mp3'),
      LetterSound(capitalLetter: 'G', smallLetter: 'g', sound: 'sound/G.mp3'),
      LetterSound(capitalLetter: 'I', smallLetter: 'i', sound: 'sound/I.mp3'),
      LetterSound(capitalLetter: 'Ï', smallLetter: 'ï', sound: 'sound/Ï.mp3'),
      LetterSound(capitalLetter: 'J', smallLetter: 'j', sound: 'sound/J.mp3'),
      LetterSound(capitalLetter: 'K', smallLetter: 'k', sound: 'sound/K.mp3'),
      LetterSound(capitalLetter: 'L', smallLetter: 'l', sound: 'sound/L.mp3'),
      LetterSound(capitalLetter: 'M', smallLetter: 'm', sound: 'sound/M.mp3'),
      LetterSound(capitalLetter: 'N', smallLetter: 'n', sound: 'sound/N.mp3'),
      LetterSound(
          capitalLetter: 'Ng', smallLetter: 'ng', sound: 'sound/Ng.mp3'),
      LetterSound(
          capitalLetter: 'Nh', smallLetter: 'nh', sound: 'sound/Nh.mp3'),
      LetterSound(
          capitalLetter: 'Ny', smallLetter: 'ny', sound: 'sound/Ny.mp3'),
      LetterSound(capitalLetter: 'O', smallLetter: 'o', sound: 'sound/O.mp3'),
      LetterSound(capitalLetter: 'Ö', smallLetter: 'ö', sound: 'sound/Ö.mp3'),
      LetterSound(capitalLetter: 'Ø', smallLetter: 'ø', sound: 'sound/Ø.mp3'),
      LetterSound(capitalLetter: 'P', smallLetter: 'p', sound: 'sound/P.mp3'),
      LetterSound(capitalLetter: 'R', smallLetter: 'r', sound: 'sound/R.mp3'),
      LetterSound(capitalLetter: 'T', smallLetter: 't', sound: 'sound/T.mp3'),
      LetterSound(
          capitalLetter: 'Th', smallLetter: 'th', sound: 'sound/Th.mp3'),
      LetterSound(capitalLetter: 'U', smallLetter: 'u', sound: 'sound/U.mp3'),
      LetterSound(capitalLetter: 'W', smallLetter: 'w', sound: 'sound/W.mp3'),
      LetterSound(capitalLetter: 'Y', smallLetter: 'y', sound: 'sound/Y.mp3'),
    ];

    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(letterAndSound.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(1),
          child: Card(
            color: Colors.grey[100],
            shadowColor: Colors.grey[500],
            child: TextButton(
              onPressed: () {
                try {
                  setState(() async {
                    path = AssetSource(letterAndSound[index].sound);
                    await player.play(path);
                    int duration = (await player.getDuration()) as int;
                    int durationInseconds = duration / 1000 as int;
                    await Duration(seconds: durationInseconds);

                    player.stop();
                    // if(player.)
                    // playAudio(path, isPlaying);
                  });
                } catch (Exception) {
                  print('oops');
                }
              },
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(letterAndSound[index].capitalLetter,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.grey[700],
                        )),
                    Text(
                      letterAndSound[index].smallLetter,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
