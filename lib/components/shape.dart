import 'package:flutter/material.dart';

class Shpae extends StatefulWidget {
  const Shpae({super.key});

  @override
  State<Shpae> createState() => _ShpaeState();
}

class _ShpaeState extends State<Shpae> {
  @override
  Widget build(BuildContext context) {
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
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          ListTile(
            title: Text(
              'Kwaano',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Numbers',
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
                              child:
                                  Image.asset('${shapes[index]['imageLink']}'),
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
