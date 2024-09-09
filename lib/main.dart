import 'package:dha_anywaaa/components/animal.dart';
import 'package:dha_anywaaa/components/bird.dart';
import 'package:dha_anywaaa/components/body_part.dart';
import 'package:dha_anywaaa/components/cloth.dart';
import 'package:dha_anywaaa/components/colors.dart';
import 'package:dha_anywaaa/components/fish.dart';
import 'package:dha_anywaaa/components/number.dart';
import 'package:dha_anywaaa/components/shape.dart';
import 'package:dha_anywaaa/home_page.dart';
import 'package:dha_anywaaa/pages/page1.dart';
import 'package:dha_anywaaa/pages/page2.dart';
import 'package:dha_anywaaa/pages/page3.dart';
import 'package:dha_anywaaa/pages/page4.dart';
import 'package:dha_anywaaa/nameEntry.dart';
import 'package:dha_anywaaa/wraper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dha Anywaa',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 2, 27, 48),
      ),
      routes: {
        // '/': (context) => HomePage(),
        '/': (context) => Wrapper(),
        'number': (context) => Number(),
        'alphabet': (context) => Page1(),
        'word': (context) => Page2(),
        'shape': (context) => Shpae(),
        'reading': (context) => Page3(),
        'quiz': (context) => Page4(),
        'home_page': (context) => HomePage(),
        'name_entry': (context) => NameEntry(),
        'colors': (context) => Kit(),
        'body': (context) => BodyPart(),
        'fish': (context) => Fish(),
        'animal': (context) => Animal(),
        'bird': (context) => Bird(),
        'clothes': (context) => Cloth()
      },
    );
  }
}
