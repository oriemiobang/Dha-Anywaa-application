import 'package:flutter/material.dart';

class Animal extends StatefulWidget {
  const Animal({super.key});

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  // 'O ruu ni cämö',
  //   'O cämö ki wïth caami mo thööth',
  //   'O ruu ni bäng gïn mo ee camø',
  //   'O määthö ki pïï mo thööth' Akëëlö
  List<Map<String, String>> animals = [
    {
      'engName': 'Cat',
      'anyName': 'Adhurrï',
      'imageLink': "assets/animals/cat.png"
    },
    {
      'engName': 'Chameleons',
      'anyName': 'Ongøønnø',
      'imageLink': "assets/animals/chem.png"
    },
    {
      'engName': 'Dog',
      'anyName': 'Gwök',
      'imageLink': 'assets/animals/dog.png'
    },

    {
      'engName': 'Donkey',
      'anyName': 'Arëën',
      'imageLink': 'assets/animals/donkey.png'
    },
    {
      'engName': 'Black-and-white colobus',
      'anyName': 'Döölö',
      'imageLink': 'assets/animals/doolo.png'
    },
    {
      'engName': 'Fox',
      'anyName': 'Othöö',
      'imageLink': 'assets/animals/foox.png'
    },
    {
      'engName': 'Giraffe',
      'anyName': 'Rïï',
      'imageLink': 'assets/animals/giraffe.png'
    },
    {
      'engName': 'Goat',
      'anyName': 'Diel',
      'imageLink': 'assets/animals/goat.png'
    },
    {
      'engName': 'Warthog',
      'anyName': 'Kul',
      'imageLink': 'assets/animals/kuul.png'
    },
    {
      'engName': 'Rhinoceros',
      'anyName': 'Nyigudhwönynya',
      'imageLink': 'assets/animals/ngiguthwonya.png'
    },
    {
      'engName': 'Lion',
      'anyName': 'Nguu',
      'imageLink': 'assets/animals/nguu.png'
    },

    // 'O ruu ni cämö',
    //   'O cämö ki wïth caami mo thööth',
    //   'O ruu ni bäng gïn mo ee camø',
    //   'O määthö ki pïï mo thööth' Akëëlö
    {
      'engName': 'Hippopotamus',
      'anyName': 'Ray',
      'imageLink': 'assets/animals/ray.png'
    },
    {
      'engName': 'Porcupine',
      'anyName': 'Thëëy',
      'imageLink': 'assets/animals/theey.png'
    },
    {
      'engName': 'Cow',
      'anyName': 'Dhieng',
      'imageLink': 'assets/animals/white_black_cow.png'
    },
  ];
  bool zoom = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    // amiriga
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: zoom
          ? Column(
              children: [
                ListTile(
                  //Cöörä
                  title: Text(
                    'Lääy',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    'Animals',
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
                  animals[index]['imageLink']!,
                  height: 400,
                )),
                ListTile(
                  title: Text(
                    animals[index]['anyName']!,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    animals[index]['engName']!,
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow_sharp,
                          size: 50,
                        )),
                    IconButton(
                        onPressed: () {
                          if (index < animals.length - 1) {
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
          : Padding(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                ListTile(
                  title: Text(
                    'Animals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    'Lääy',
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
                  children: List.generate(
                      animals.length,
                      (index) => Card(
                            child: GestureDetector(
                              // onTap: () {
                              //   Navigator.pushNamed(
                              //       context, '${animals[index]['route']}');
                              // },
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                        '${animals[index]['imageLink']}'),
                                  ),
                                  ListTile(
                                    subtitle: Text(
                                      '${animals[index]['engName']}',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    title: Text(
                                      '${animals[index]['anyName']}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                ))
              ]),
            ),
    );
  }
}
