import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 239, 239),
      appBar: AppBar(
          title: Text(
            'About',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 4, 28, 49)),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SelectableText(
                "\nThis is a Dha Anywaa app designed by a university student to assist individuals in learning to read the Anywaa language. It is user-friendly, featuring both pictures and audio elements to enhance the learning experience. Geared towards absolute beginners, the app guides users through each step, facilitating the process of reading in Dha Anywaa.\n\n"
                "The application was developed by a university student named Oriemi Obang Oriemi, aiming to support those interested in acquiring reading skills in Dha Anywaa. Dha Anywaa is a language belonging to the larger Luo family group, primarily spoken in East Africa (Ethiopia, South Sudan...). It possesses its own set of alphabets and unique rules. This mobile application focuses on reading alphabets, words, and sentences in the Anywaa language.\n\n"
                "The initial page of the app emphasizes both uppercase and lowercase alphabets. The second page focuses on words and their corresponding images, utilizing individual letters to form words. The third page centers around constructing sentences based on the words introduced in page 2. Lastly, the fourth page involves testing the knowledge acquired from pages 1, 2, and 3.\n\n"
                "The app ensures a guided learning experience, eliminating the need for external guidance or someone to read aloud. If a user forgets how to read a word or letter, a simple click of a button prompts the app to pronounce it."
                "The app is entirely free, allowing anyone interested in learning or improving reading skills in Dha Anywaa to access and utilize it without any cost.\n\n"
                "Best Wishes!"),
          )),
        ),
      ),
    );
  }
}
