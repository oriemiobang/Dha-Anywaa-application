import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Help',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 4, 28, 49)),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: SelectableText(
              'When you open the Dha Anywaa app, the first page that should pop up is the one containing Dha Anywaa alphabets. The title is "Göörë," which means alphabets, and it includes both the small and capital letters of Dha Anywaa.'
              'If you find reading the letters challenging, simply click on a letter, and the app will read it to you.\n\n'
              "The second page consists of words and corresponding images. You can read the words, and if you find them challenging, you can refer to the pictures for hints. If you're unsure, clicking on the image will have the app read it to you.\n\n"
              "The third page is a bit challenging for beginners as it contains Dha Anywaa sentences. You can interact with the sentences, and if it becomes difficult, clicking on the sentence will once again read it to you.\n\n"
              "The fourth page is for checking comprehension. It includes what we've learned in previous pages and introduces additional words and animals to challenge the user. Choose an answer, and if it's wrong, the background color will turn red; if it's right, it will show green.\n\n"
              'After completing the current question, you can click the button at the bottom right corner labeled "Pöödhï," which means next or move on, if you want to go back to the previous question you can click the button at the bottom left corner labeled "Døø Køøri" which means back or go back and it will take you back to the previous question.\n\n'
              "The app's sidebar provides additional features, such as Dha Anywaa vowels, help, and an about section."
              'For Dha Anywaa vowel letters, you can touch the first element in the list, "Göörë moo cïp dwøl," which means vowels to navigate to another page where you can learn about Dha Anywaa vowels.'
              '\n\nFor more information, feel free to email me at oriemiobango@gmail.com.'),
        )),
      ),
    );
  }
}
