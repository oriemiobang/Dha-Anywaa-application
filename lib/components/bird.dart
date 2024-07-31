import 'package:flutter/material.dart';

class Bird extends StatefulWidget {
  const Bird({super.key});

  @override
  State<Bird> createState() => _BirdState();
}

class _BirdState extends State<Bird> {
  @override
  Widget build(BuildContext context) {
    // 'O ruu ni cämö',
    //   'O cämö ki wïth caami mo thööth',
    //   'O ruu ni bäng gïn mo ee camø',
    //   'O määthö ki pïï mo thööth' Akëëlö
    List<Map<String, String>> birds = [
      {
        'engName': 'Head',
        'anyName': 'Wïc',
        'imageLink': "assets/body_part/head.png"
      },
      {
        'engName': 'Ankle',
        'anyName': 'Adikwala',
        'imageLink': "assets/body_part/ankle.png"
      },
      {
        'engName': 'Arm',
        'anyName': 'Cinø',
        'imageLink': 'assets/body_part/arm.png'
      },

      {
        'engName': 'Chest',
        'anyName': 'Käw',
        'imageLink': 'assets/body_part/chest.png'
      },
      {
        'engName': 'Ear',
        'anyName': 'Ïth',
        'imageLink': 'assets/body_part/ear.png'
      },
      {
        'engName': 'Eye',
        'anyName': 'Wang',
        'imageLink': 'assets/body_part/eye.png'
      },
      {
        'engName': 'Finger',
        'anyName': 'Lweedø',
        'imageLink': 'assets/body_part/finger.png'
      },
      {
        'engName': 'Foot',
        'anyName': 'Othäny tielø',
        'imageLink': 'assets/body_part/foot.png'
      },
      {
        'engName': 'Hair',
        'anyName': 'Jïër',
        'imageLink': 'assets/body_part/hair.png'
      },

      // 'O ruu ni cämö',
      //   'O cämö ki wïth caami mo thööth',
      //   'O ruu ni bäng gïn mo ee camø',
      //   'O määthö ki pïï mo thööth' Akëëlö
      {
        'engName': 'Knee',
        'anyName': 'Wïcuung',
        'imageLink': 'assets/body_part/knee.png'
      },
      {
        'engName': 'Leg',
        'anyName': 'Tielø',
        'imageLink': 'assets/body_part/leg.png'
      },
      {
        'engName': 'Mouth',
        'anyName': 'Dhøk',
        'imageLink': 'assets/body_part/mouth.png'
      },
      {
        'engName': 'Neck',
        'anyName': 'Ngut',
        'imageLink': 'assets/body_part/neck.png'
      },
      {
        'engName': 'Nose',
        'anyName': 'Um',
        'imageLink': 'assets/body_part/nose.png'
      },
      {
        'engName': 'Shoulder',
        'anyName': 'Göön',
        'imageLink': 'assets/body_part/shoulder.png'
      },
      {
        'engName': 'Theeth',
        'anyName': 'Lak',
        'imageLink': 'assets/body_part/theeth.png'
      },
      {
        'engName': 'Thigh',
        'anyName': 'Ääm',
        'imageLink': 'assets/body_part/thigh.png'
      },
      {
        'engName': 'Toungue',
        'anyName': 'Leep',
        'imageLink': 'assets/body_part/toungue.png'
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
              'Body Parts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Jap Dëël',
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
                birds.length,
                (index) => Card(
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushNamed(
                        //       context, '${birds[index]['route']}');
                        // },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Expanded(
                              child:
                                  Image.asset('${birds[index]['imageLink']}'),
                            ),
                            ListTile(
                              subtitle: Text(
                                '${birds[index]['engName']}',
                                style: TextStyle(color: Colors.grey),
                              ),
                              title: Text(
                                '${birds[index]['anyName']}',
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
