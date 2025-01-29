import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  // 'O ruu ni cämö',
  //   'O cämö ki wïth caami mo thööth',
  //   'O ruu ni bäng gïn mo ee camø',
  //   'O määthö ki pïï mo thööth' Akëëlö
  List<Map<String, String>> numbers = [
    {
      'number': '1',
      'description': 'One',
      'anyDis': 'Aciel',
    },
    {
      'number': '2',
      'description': 'Two',
      'anyDis': 'Ariew',
    },
    {
      'number': '3',
      'description': 'Three',
      'anyDis': 'Adäk',
    },
    {
      'number': '4',
      'description': 'Four',
      'anyDis': 'Angween',
    },
    {
      'number': '5',
      'description': 'Five',
      'anyDis': 'Abïc',
    },
    {
      'number': '6',
      'description': 'Six',
      'anyDis': 'Abïciel',
    },
    {
      'number': '7',
      'description': 'Seven',
      'anyDis': 'Abïriø',
    },
    {
      'number': '8',
      'description': 'Eight',
      'anyDis': 'Abära',
    },
    {
      'number': '9',
      'description': 'Nine',
      'anyDis': 'Abïngween',
    },
    {
      'number': '10',
      'description': 'Ten',
      'anyDis': 'Apaar',
    }
  ];

  bool zoom = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
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
                    'Kwäänë',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  subtitle: Text(
                    'Numbers',
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
                  child: Text(
                    numbers[index]['number']!,
                    style: TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    numbers[index]['anyDis']!,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    numbers[index]['description']!,
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
                          if (index < numbers.length - 1) {
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
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  ListTile(
                    //Cöörä
                    title: Text(
                      'Kwäänë',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    subtitle: Text(
                      'Numbers',
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
                          numbers.length,
                          (index) => Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                          fontSize: 80,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700]),
                                    ),
                                    Text(
                                      '${numbers[index]['anyDis']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700],
                                          fontSize: 20),
                                    ),
                                    Text('${numbers[index]['description']}'),
                                  ],
                                ),
                              )),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
