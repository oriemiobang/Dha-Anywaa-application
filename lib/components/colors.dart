import 'package:flutter/material.dart';

class Kit extends StatefulWidget {
  const Kit({super.key});

  @override
  State<Kit> createState() => _KitState();
}

class _KitState extends State<Kit> {
  @override
  Widget build(BuildContext context) {
    // 'O ruu ni cämö',
    //   'O cämö ki wïth caami mo thööth',
    //   'O ruu ni bäng gïn mo ee camø',
    //   'O määthö ki pïï mo thööth' Akëëlö
    List<Map<String, String>> colors = [
      {
        'engName': 'Red',
        'anyName': 'Kwaar',
        'imageLink': "assets/word_images/red.png"
      },
      {
        'engName': 'Yellow',
        'anyName': 'Abäga',
        'imageLink': "assets/word_images/yellow.png"
      },
      {
        'engName': 'Blue',
        'anyName': 'Amïrïga',
        'imageLink': 'assets/word_images/blue.png'
      },
      {
        'engName': 'Orange',
        'anyName': 'Maar odwëëla',
        'imageLink': 'assets/word_images/orange.png'
      },
      {
        'engName': 'Sky blue',
        'anyName': 'Caaro',
        'imageLink': 'assets/word_images/sky blue.png'
      },
      {
        'engName': 'Green',
        'anyName': 'Mar',
        'imageLink': 'assets/word_images/green.png'
      },
      {
        'engName': 'White',
        'anyName': 'Tar',
        'imageLink': 'assets/word_images/white.png'
      },
      {
        'engName': 'Black',
        'anyName': 'Cøl',
        'imageLink': 'assets/word_images/black.jpeg'
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
              'Kït',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            subtitle: Text(
              'Colors',
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
                colors.length,
                (index) => Card(
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushNamed(
                        //       context, '${colors[index]['route']}');
                        // },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Expanded(
                              child:
                                  Image.asset('${colors[index]['imageLink']}'),
                            ),
                            ListTile(
                              subtitle: Text(
                                '${colors[index]['engName']}',
                                style: TextStyle(color: Colors.grey),
                              ),
                              title: Text(
                                '${colors[index]['anyName']}',
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
