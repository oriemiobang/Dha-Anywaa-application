import 'package:flutter/material.dart';

class Fish extends StatefulWidget {
  const Fish({super.key});

  @override
  State<Fish> createState() => _FishState();
}

class _FishState extends State<Fish> {
  @override
  Widget build(BuildContext context) {
    // 'O ruu ni cämö',
    //   'O cämö ki wïth caami mo thööth',
    //   'O ruu ni bäng gïn mo ee camø',
    //   'O määthö ki pïï mo thööth' Akëëlö
    List<Map<String, String>> fishes = [
      {
        'engName': '',
        'anyName': 'Odwëëla',
        'imageLink': "assets/fish/adweela.png"
      },
      {
        'engName': '',
        'anyName': 'Agwiila',
        'imageLink': "assets/fish/agwiila (2).png"
      },
      {'engName': '', 'anyName': 'Dølø', 'imageLink': 'assets/fish/dolo.png'},

      {'engName': '', 'anyName': 'Guur', 'imageLink': 'assets/fish/guur.png'},
      {
        'engName': '',
        'anyName': 'Jari',
        'imageLink': 'assets/fish/jari (2).png'
      },
      {'engName': '', 'anyName': 'Luuth', 'imageLink': 'assets/fish/luuth.png'},
      {
        'engName': '',
        'anyName': 'Odwäära',
        'imageLink': 'assets/fish/odwaara.png'
      },
      {'engName': '', 'anyName': 'Olwak', 'imageLink': 'assets/fish/olwak.png'},

      // 'O ruu ni cämö',
      //   'O cämö ki wïth caami mo thööth',
      //   'O ruu ni bäng gïn mo ee camø',
      //   'O määthö ki pïï mo thööth' Akëëlö
      {
        'engName': '',
        'anyName': 'Orwëëdhö',
        'imageLink': 'assets/fish/rec.png'
      },
      {'engName': '', 'anyName': 'Wïïth', 'imageLink': 'assets/fish/wiith.png'},
    ];

    // amiriga
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          ListTile(
            title: Text(
              'Fishes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Ric',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
                fishes.length,
                (index) => Card(
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushNamed(
                        //       context, '${fishes[index]['route']}');
                        // },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Expanded(
                              child:
                                  Image.asset('${fishes[index]['imageLink']}'),
                            ),
                            ListTile(
                              subtitle: Text(
                                '${fishes[index]['engName']}',
                                style: TextStyle(color: Colors.grey),
                              ),
                              title: Text(
                                '${fishes[index]['anyName']}',
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
