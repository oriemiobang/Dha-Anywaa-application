import 'package:flutter/material.dart';

class Shpae extends StatefulWidget {
  const Shpae({super.key});

  @override
  State<Shpae> createState() => _ShpaeState();
}

class _ShpaeState extends State<Shpae> {
  List<Map<String, String>> shapes = [
    {
      'engName': 'Rectangle',
      'anyName': 'Atuk ngween',
      'imageLink': "assets/word_images/rectangle.png"
    },
    {
      'engName': 'Three Angle',
      'anyName': 'Atuk Däk',
      'imageLink': "assets/word_images/three_angle.png"
    },
    {
      'engName': 'Circle',
      'anyName': 'Lømløma',
      'imageLink': 'assets/word_images/circle.png'
    },
    {
      'engName': 'Oval',
      'anyName': 'Abööth abööth',
      'imageLink': 'assets/word_images/oval.png'
    },
  ];
  bool zoom = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  shapes[index]['imageLink']!,
                  height: 400,
                )),
                ListTile(
                  title: Text(
                    shapes[index]['anyName']!,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    shapes[index]['engName']!,
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
                          if (index < shapes.length - 1) {
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
                    'Yi cwääc',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    'Shapes',
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
                      shapes.length,
                      (index) => Card(
                            child: GestureDetector(
                              // onTap: () {
                              //   Navigator.pushNamed(
                              //       context, '${shapes[index]['route']}');
                              // },
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                        '${shapes[index]['imageLink']}'),
                                  ),
                                  ListTile(
                                    subtitle: Text(
                                      '${shapes[index]['engName']}',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    title: Text(
                                      '${shapes[index]['anyName']}',
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
