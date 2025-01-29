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

  // bool isPlaying = false;
  List wordsAndPictures = [
    Words(
        word: "Abäc",
        engWord: 'Maize',
        imageUrl: "assets/word_images/maize.png",
        wordSound: 'word_sound/Abac.mp3'),
    Words(
        word: "Ääm",
        engWord: 'Thigh',
        imageUrl: "assets/word_images/thigh.png",
        wordSound: 'word_sound/Aam.mp3'),
    Words(
        word: "Bøøgø",
        engWord: 'Leave',
        imageUrl: "assets/word_images/leaf.png",
        wordSound: 'word_sound/Boogo.mp3'),
    Words(
        word: "Cöör",
        engWord: 'Hat',
        imageUrl: "assets/word_images/hat.png",
        wordSound: 'word_sound/Coor.mp3'),
    Words(
        word: "Digwey",
        engWord: 'Lizard',
        imageUrl: "assets/word_images/lizard.png",
        wordSound: 'word_sound/Degwey.mp3'),
    Words(
        word: "Dhieng",
        engWord: 'Cow',
        imageUrl: "assets/word_images/cow.png",
        wordSound: 'word_sound/Dhieng.mp3'),
    Words(
        word: "Eel",
        engWord: 'Push',
        imageUrl: "assets/word_images/eel.png",
        wordSound: 'word_sound/Eel.mp3'),
    Words(
        word: "Ëëlï",
        engWord: 'Injera making machine',
        imageUrl: "assets/word_images/eeli.png",
        wordSound: 'word_sound/Eeli.mp3'),
    Words(
        word: "Gwienø",
        engWord: 'Hen',
        imageUrl: "assets/word_images/hen.png",
        wordSound: 'word_sound/Gwieno.mp3'),
    Words(
        word: "iith",
        engWord: 'Well',
        imageUrl: "assets/word_images/iith.png",
        wordSound: 'word_sound/Iith.mp3'),
    Words(
        word: "ïth",
        engWord: 'Ear',
        imageUrl: "assets/word_images/ear.png",
        wordSound: 'word_sound/Ith.mp3'),
    Words(
        word: "Jääy",
        engWord: 'Car',
        imageUrl: "assets/word_images/car.png",
        wordSound: 'word_sound/Jaay.mp3'),
    Words(
        word: "Køøm",
        engWord: 'Chair',
        imageUrl: "assets/word_images/char.png",
        wordSound: 'word_sound/Koom.mp3'),
    Words(
        word: "Liec",
        engWord: 'Elephant',
        imageUrl: "assets/word_images/elephant.png",
        wordSound: 'word_sound/Liec.mp3'),
    Words(
        word: "Maac",
        engWord: 'Fire',
        imageUrl: "assets/word_images/maac.png",
        wordSound: 'word_sound/Maac.mp3'),
    Words(
        word: "naam",
        engWord: 'River',
        imageUrl: "assets/word_images/river.png",
        wordSound: 'word_sound/Naam.mp3'),
    Words(
        word: "Nhøth",
        engWord: 'Suck',
        imageUrl: "assets/word_images/suck.png",
        wordSound: 'word_sound/Nhoth.mp3'),
    Words(
        word: "Nguu",
        engWord: 'Lion',
        imageUrl: "assets/word_images/lion.png",
        wordSound: 'word_sound/Nguu.mp3'),
    Words(
        word: "Nyaang",
        engWord: 'Crocdile',
        imageUrl: "assets/word_images/croc.png",
        wordSound: 'word_sound/Nyaang.mp3'),
    Words(
        word: "Odïëk",
        engWord: 'Hayna',
        imageUrl: "assets/word_images/hayna.png",
        wordSound: 'word_sound/Odiek.mp3'),
    Words(
        word: "Öök",
        engWord: '',
        imageUrl: "assets/word_images/ook.png",
        wordSound: 'word_sound/Ook.mp3'),
    Words(
        word: "Øttø",
        engWord: 'House',
        imageUrl: "assets/word_images/house.png",
        wordSound: 'word_sound/Oto.mp3'),
    Words(
        word: "Pïën",
        engWord: 'Carpet',
        imageUrl: "assets/word_images/pien.png",
        wordSound: 'word_sound/Pien.mp3'),
    Words(
        word: "Rïï",
        engWord: 'Spear',
        imageUrl: "assets/word_images/giraffe.png",
        wordSound: 'word_sound/Rii.mp3'),
    Words(
        word: "Tøng",
        engWord: 'Arrow',
        imageUrl: "assets/word_images/tong.png",
        wordSound: 'word_sound/Tong.mp3'),
    Words(
        word: "Thoom",
        engWord: 'Quitar',
        imageUrl: "assets/word_images/quitar.png",
        wordSound: 'word_sound/Thoom.mp3'),
    Words(
        word: "Uudö",
        engWord: 'Ostrich',
        imageUrl: "assets/word_images/ostrich.png",
        wordSound: 'word_sound/Uudo.mp3'),
    Words(
        word: "War",
        engWord: 'Shoes',
        imageUrl: "assets/word_images/shoe.png",
        wordSound: 'word_sound/War.mp3'),
    Words(
        word: "Yiie",
        engWord: 'Inside',
        imageUrl: "assets/word_images/carton.png",
        wordSound: 'word_sound/Yiie.mp3'),
  ];
  bool zoom = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(forceMaterialTransparency: true),
      body: zoom
          ? Column(
              children: [
                ListTile(
                  //Cöörä
                  title: Text(
                    'Dööttï',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    'Words',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.zoom_out_map_outlined),
                    onPressed: () {
                      setState(() {
                        zoom = !zoom;
                      });
                    },
                  ),
                ),
                Container(
                    child: Image.asset(
                  wordsAndPictures[index].imageUrl,
                  height: 400,
                )),
                ListTile(
                  title: Text(
                    wordsAndPictures[index].word,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    wordsAndPictures[index].engWord,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          if (index > 0) {
                            setState(() {
                              index = index - 1;
                            });
                          }
                        },
                        icon: Icon(
                          Icons.chevron_left_outlined,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {
                          try {
                            setState(() async {
                              path = AssetSource(
                                  wordsAndPictures[index].wordSound);

                              await player.play(path);
                              int duration =
                                  (await player.getDuration()) as int;
                              int durationInseconds = duration / 1000 as int;
                              await Duration(seconds: durationInseconds);

                              player.stop();
                            });
                          } catch (Exception) {}
                        },
                        icon: Icon(
                          Icons.play_arrow_sharp,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {
                          if (index < wordsAndPictures.length - 1) {
                            setState(() {
                              index = index + 1;
                            });
                          }
                        },
                        icon: Icon(
                          Icons.chevron_right_outlined,
                          size: 50,
                        )),
                  ],
                )
              ],
            )
          : Column(
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
                  trailing: IconButton(
                    icon: Icon(Icons.zoom_out_map_outlined),
                    onPressed: () {
                      setState(() {
                        zoom = !zoom;
                      });
                    },
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
                                  path = AssetSource(
                                      wordsAndPictures[index].wordSound);

                                  await player.play(path);
                                  int duration =
                                      (await player.getDuration()) as int;
                                  int durationInseconds =
                                      duration / 1000 as int;
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
