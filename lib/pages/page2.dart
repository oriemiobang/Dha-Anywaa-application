// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:dha_anywaaa/words.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
    List wordsAndPictures = [
      Words(
          word: "Abäc",
          imageUrl: "assets/word_images/maize.png",
          wordSound: 'word_sound/Abac.mp3'),
      Words(
          word: "Ääm",
          imageUrl: "assets/word_images/thigh.png",
          wordSound: 'word_sound/Aam.mp3'),
      Words(
          word: "Bøøgø",
          imageUrl: "assets/word_images/leaf.png",
          wordSound: 'word_sound/Boogo.mp3'),
      Words(
          word: "Cöör",
          imageUrl: "assets/word_images/hat.png",
          wordSound: 'word_sound/Coor.mp3'),
      Words(
          word: "Digwey",
          imageUrl: "assets/word_images/lizard.png",
          wordSound: 'word_sound/Degwey.mp3'),
      Words(
          word: "Dhieng",
          imageUrl: "assets/word_images/cow.png",
          wordSound: 'word_sound/Dhieng.mp3'),
      Words(
          word: "Eel",
          imageUrl: "assets/word_images/eel.png",
          wordSound: 'word_sound/Eel.mp3'),
      Words(
          word: "Ëëlï",
          imageUrl: "assets/word_images/eeli.png",
          wordSound: 'word_sound/Eeli.mp3'),
      Words(
          word: "Gwienø",
          imageUrl: "assets/word_images/hen.png",
          wordSound: 'word_sound/Gwieno.mp3'),
      Words(
          word: "iith",
          imageUrl: "assets/word_images/iith.png",
          wordSound: 'word_sound/Iith.mp3'),
      Words(
          word: "ïth",
          imageUrl: "assets/word_images/ear.png",
          wordSound: 'word_sound/Ith.mp3'),
      Words(
          word: "Jääy",
          imageUrl: "assets/word_images/car.png",
          wordSound: 'word_sound/Jaay.mp3'),
      Words(
          word: "Køøm",
          imageUrl: "assets/word_images/char.png",
          wordSound: 'word_sound/Koom.mp3'),
      Words(
          word: "Liec",
          imageUrl: "assets/word_images/elephant.png",
          wordSound: 'word_sound/Liec.mp3'),
      Words(
          word: "Maac",
          imageUrl: "assets/word_images/maac.png",
          wordSound: 'word_sound/Maac.mp3'),
      Words(
          word: "naam",
          imageUrl: "assets/word_images/river.png",
          wordSound: 'word_sound/Naam.mp3'),
      Words(
          word: "Nhøth",
          imageUrl: "assets/word_images/suck.png",
          wordSound: 'word_sound/Nhoth.mp3'),
      Words(
          word: "Nguu",
          imageUrl: "assets/word_images/lion.png",
          wordSound: 'word_sound/Nguu.mp3'),
      Words(
          word: "Nyaang",
          imageUrl: "assets/word_images/croc.png",
          wordSound: 'word_sound/Nyaang.mp3'),
      Words(
          word: "Odïëk",
          imageUrl: "assets/word_images/hayna.png",
          wordSound: 'word_sound/Odiek.mp3'),
      Words(
          word: "Öök",
          imageUrl: "assets/word_images/ook.png",
          wordSound: 'word_sound/Ook.mp3'),
      Words(
          word: "Øttø",
          imageUrl: "assets/word_images/house.png",
          wordSound: 'word_sound/Oto.mp3'),
      Words(
          word: "Pïën",
          imageUrl: "assets/word_images/pien.png",
          wordSound: 'word_sound/Pien.mp3'),
      Words(
          word: "Rïï",
          imageUrl: "assets/word_images/giraffe.png",
          wordSound: 'word_sound/Rii.mp3'),
      Words(
          word: "Tøng",
          imageUrl: "assets/word_images/tong.png",
          wordSound: 'word_sound/Tong.mp3'),
      Words(
          word: "Thoom",
          imageUrl: "assets/word_images/quitar.png",
          wordSound: 'word_sound/Thoom.mp3'),
      Words(
          word: "Uudö",
          imageUrl: "assets/word_images/ostrich.png",
          wordSound: 'word_sound/Uudo.mp3'),
      Words(
          word: "War",
          imageUrl: "assets/word_images/shoe.png",
          wordSound: 'word_sound/War.mp3'),
      Words(
          word: "Yiie",
          imageUrl: "assets/word_images/carton.png",
          wordSound: 'word_sound/Yiie.mp3'),
    ];

    return Scaffold(
      appBar: AppBar(forceMaterialTransparency: true),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Dööttï',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            subtitle: Text(
              'Words',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(wordsAndPictures.length, (index) {
                return Card(
                  color: Colors.grey[98],
                  child: TextButton(
                      onPressed: () {
                        try {
                          setState(() async {
                            path =
                                AssetSource(wordsAndPictures[index].wordSound);

                            await player.play(path);
                            int duration = (await player.getDuration()) as int;
                            int durationInseconds = duration / 1000 as int;
                            await Duration(seconds: durationInseconds);

                            player.stop();
                          });
                        } catch (Exception) {}
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Image(
                              image: AssetImage(
                                wordsAndPictures[index].imageUrl,
                              ),
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          Text(
                            wordsAndPictures[index].word,
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.5,
                            ),
                          ),
                        ],
                      )),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
