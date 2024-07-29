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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
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
