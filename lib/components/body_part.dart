import 'package:flutter/material.dart';

class BodyPart extends StatefulWidget {
  const BodyPart({super.key});

  @override
  State<BodyPart> createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  // 'O ruu ni cämö',
  //   'O cämö ki wïth caami mo thööth',
  //   'O ruu ni bäng gïn mo ee camø',
  //   'O määthö ki pïï mo thööth' Akëëlö
  List<Map<String, String>> body_parts = [
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
                    'winy',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    'Birds',
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
                  body_parts[index]['imageLink']!,
                  height: 400,
                )),
                ListTile(
                  title: Text(
                    body_parts[index]['anyName']!,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    body_parts[index]['engName']!,
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
                          if (index < body_parts.length - 1) {
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
                    'Body Parts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    'Jap Dëël',
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
                      body_parts.length,
                      (index) => Card(
                            child: GestureDetector(
                              // onTap: () {
                              //   Navigator.pushNamed(
                              //       context, '${body_parts[index]['route']}');
                              // },
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                        '${body_parts[index]['imageLink']}'),
                                  ),
                                  ListTile(
                                    subtitle: Text(
                                      '${body_parts[index]['engName']}',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    title: Text(
                                      '${body_parts[index]['anyName']}',
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
