// ignore_for_file: prefer_const_construct
import 'package:dha_anywaaa/about.dart';
import 'package:dha_anywaaa/help.dart';
// import 'package:dha_anywaaa/pages/page1.dart';
// import 'package:dha_anywaaa/pages/page2.dart';
// import 'package:dha_anywaaa/pages/page3.dart';
// import 'package:dha_anywaaa/pages/page4.dart';
import 'package:dha_anywaaa/vowelLetter.dart';
import 'package:dha_anywaaa/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri webUrl = Uri.parse('https://dha-anywaa-app.netlify.app/');

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 'O ruu ni cämö',
  //   'O cämö ki wïth caami mo thööth',
  //   'O ruu ni bäng gïn mo ee camø',
  //   'O määthö ki pïï mo thööth' Akëëlö
  List<Map<String, String>> categories = [
    {
      'engName': 'Numbers',
      'anyName': 'Kwäänë',
      'imageLink': 'assets/category_image/numbers_2.png',
      'route': 'number'
    },
    {
      'engName': 'Alphabets',
      'anyName': 'Göörë',
      'imageLink': 'assets/category_image/alphabets.png',
      'route': 'alphabet'
    },
    {
      'engName': 'Words',
      'anyName': 'Dööttï',
      'imageLink': 'assets/category_image/book.png',
      'route': 'word'
    },
    {
      'engName': 'Reading',
      'anyName': 'Kwäänö',
      'imageLink': 'assets/category_image/reading.png',
      'route': 'reading'
    },
    {
      'engName': 'Colors',
      'anyName': 'Kït',
      'imageLink': 'assets/category_image/colors_4.png',
      'route': 'color'
    },
    {
      'engName': 'Shapes',
      'anyName': 'Yi cwääc',
      'imageLink': 'assets/category_image/shapes_1.png',
      'route': 'shape'
    },
    {
      'engName': 'Quiz',
      'anyName': 'Päärö',
      'imageLink': 'assets/category_image/quiz.png',
      'route': 'quiz'
    },
    {
      'engName': 'Body part',
      'anyName': 'Jap dëël',
      'imageLink': 'assets/category_image/body_part.png',
      'route': 'body'
    }
  ];
  bool themeValue = false;
  @override
  Widget build(BuildContext context) {
    Future<void> _openUrl() async {
      try {
        await launchUrl(
          webUrl,
          webOnlyWindowName: '_blank',
          mode: LaunchMode.externalApplication,
          webViewConfiguration:
              const WebViewConfiguration(enableJavaScript: true),
        );
      } catch (Exception) {}
    }

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        // backgroundColor: Color.fromARGB(232, 245, 238, 240),
        appBar: AppBar(
          foregroundColor: Colors.black,
          forceMaterialTransparency: true,

          // title: const Text(
          //   'Dha anywaa',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/word_images/side_bar_bg.png'),
                      fit: BoxFit.cover),
                  // color: const Color.fromARGB(255, 2, 27, 48),
                ),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: const Text(
                    'Dha Anywaa',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VowelLetter()));
                },
                leading: Icon(Icons.abc),
                title: const Text(
                  'Göörë moo cïp dwøl',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 28, 49),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Body()));
                },
                leading: Icon(Icons.boy_outlined),
                title: const Text(
                  'Jap dëël',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 28, 49),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                },
                title: const Text(
                  'About',
                  style: TextStyle(color: Color.fromARGB(255, 4, 28, 49)),
                ),
                leading: const Icon(
                  Icons.info_outline,
                  color: Color.fromARGB(255, 4, 28, 49),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Help()));
                },
                title: const Text(
                  'Help',
                  style: TextStyle(color: Color.fromARGB(255, 4, 28, 49)),
                ),
                leading: const Icon(
                  Icons.help_outline_outlined,
                  color: Color.fromARGB(255, 4, 28, 49),
                ),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _openUrl();
                  });
                },
                title: const Text(
                  'More',
                  style: TextStyle(color: Color.fromARGB(255, 4, 28, 49)),
                ),
                leading: const Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(255, 4, 28, 49),
                ),
              ),
              const SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
        // body: const TabBarView(children: <Widget>[
        //   Page1(),
        //   Page2(),
        //   Page3(),
        //   Page4(),
        // ]),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Obulu',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    categories.length,
                    (index) => Card(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '${categories[index]['route']}');
                            },
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                      '${categories[index]['imageLink']}'),
                                ),
                                ListTile(
                                  subtitle: Text(
                                    '${categories[index]['engName']}',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  title: Text(
                                    '${categories[index]['anyName']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
