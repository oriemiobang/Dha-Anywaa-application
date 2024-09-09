import 'package:flutter/material.dart';

class Cloth extends StatefulWidget {
  const Cloth({super.key});

  @override
  State<Cloth> createState() => _ClothState();
}

class _ClothState extends State<Cloth> {
  @override
  Widget build(BuildContext context) {
    // 'O ruu ni cämö',
    //   'O cämö ki wïth caami mo thööth',
    //   'O ruu ni bäng gïn mo ee camø',
    //   'O määthö ki pïï mo thööth' Akëëlö
    List<Map<String, String>> clothes = [
      {
        'engName': 'Belt',
        'anyName': 'Kaw',
        'imageLink': "assets/cloth/belt.png"
      },
      {
        'engName': 'Cap',
        'anyName': 'Cöör',
        'imageLink': "assets/cloth/cap.png"
      },
      {
        'engName': 'Dress',
        'anyName': 'Araagi',
        'imageLink': 'assets/cloth/dress.png'
      },
      {
        'engName': 'Lïdhäärë',
        'anyName': 'Eye glasses',
        'imageLink': 'assets/cloth/glasses.png'
      },
      {
        'engName': 'Jacket',
        'anyName': 'Koothi',
        'imageLink': 'assets/cloth/jacket.png'
      },
      {
        'engName': 'War',
        'anyName': 'Shoes',
        'imageLink': 'assets/cloth/shoess.png'
      },
      {
        'engName': 'Shorts',
        'anyName': 'Ongølø',
        'imageLink': 'assets/cloth/shorts.png'
      },
      {
        'engName': 'Skirt',
        'anyName': 'Thïnuura',
        'imageLink': 'assets/cloth/skirt.png'
      },
      {
        'engName': 'Socks',
        'anyName': 'Curubathe',
        'imageLink': 'assets/cloth/socks.png'
      },
      {
        'engName': 'Trouser',
        'anyName': 'Marthøa',
        'imageLink': 'assets/cloth/trouser.png'
      },
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
              'Clothes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Abïëë',
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
                clothes.length,
                (index) => Card(
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushNamed(
                        //       context, '${clothes[index]['route']}');
                        // },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Expanded(
                              child:
                                  Image.asset('${clothes[index]['imageLink']}'),
                            ),
                            ListTile(
                              subtitle: Text(
                                '${clothes[index]['engName']}',
                                style: TextStyle(color: Colors.grey),
                              ),
                              title: Text(
                                '${clothes[index]['anyName']}',
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
