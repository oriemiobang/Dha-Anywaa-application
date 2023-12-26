// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int finalResult;
  String text = '';

  Result({required this.finalResult});

  @override
  Widget build(BuildContext context) {
    congraText() {
      if (finalResult <= 10) {
        text = 'Yïna kännö ki mo nøk døc\n mak dëërï ki kwäänö';
      } else if (finalResult <= 20) {
        text = 'Yïna kännö ki mo theem yaak mak dëërï';
      } else if (finalResult <= 25) {
        text = 'Beer døc kare yïna kännö ki';
      } else if (finalResult <= 31) {
        text = 'Angø këët nø, cääth nyïmï ki teek mari';
      }
      return text;
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 239, 239),
      appBar: AppBar(
        title: const Text(
          '  ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 4, 28, 49),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            congraText(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 28, 49),
                  borderRadius: BorderRadius.circular(120)),
              child: Center(
                  child: Text(
                '$finalResult / 31',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ))),
        ],
      )),
    );
  }
}
