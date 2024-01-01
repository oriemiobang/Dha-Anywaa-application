// ignore_for_file: prefer_const_construct
import 'package:dha_anywaaa/about.dart';
import 'package:dha_anywaaa/help.dart';
import 'package:dha_anywaaa/pages/page1.dart';
import 'package:dha_anywaaa/pages/page2.dart';
import 'package:dha_anywaaa/pages/page3.dart';
import 'package:dha_anywaaa/pages/page4.dart';
import 'package:dha_anywaaa/vowelLetter.dart';
import 'package:dha_anywaaa/widgets/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool themeValue = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'Dha anywaa',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(indicatorColor: Colors.white, tabs: <Widget>[
            Text(
              'Göörë',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            Text(
              'Döötï',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.5),
            ),
            Text(
              'Lup',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            Text(
              'Päärö',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ]),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 4, 28, 49),
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
              const SizedBox(
                height: 300,
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(10),
                child: SelectableText(
                  'Designed and developed by\nName: Oriemi Obang Oriemi\n'
                  'Email: oriemiobango@gmail.com',
                  style: TextStyle(color: Color.fromARGB(255, 158, 152, 152)),
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(children: <Widget>[
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ]),
      ),
    );
  }
}
