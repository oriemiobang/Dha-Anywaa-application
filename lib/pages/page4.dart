import 'package:dha_anywaaa/Questions.dart';
import 'package:dha_anywaaa/result_page.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int pageCounter = 0;
  int selectedIndex = -1;
  int PageSelectedIndex = -1;
  Color rightAnswerColor = Color.fromARGB(255, 245, 242, 242);
  Color wrongAnswerColor = Color.fromARGB(255, 245, 242, 242);
  int nextPageIndex = 0;
  int finalResult = 0;
  int trial = 0;

  @override
  Widget build(BuildContext context) {
    List questionsList = [
      Questions(
          id: 1,
          answer_index: 2,
          image: 'assets/word_images/giraffe.png',
          question: 'Lääy man cwøli nïdï?',
          options: ['Rii', 'Riï', 'Rïï', 'Arëën']),
      Questions(
          id: 2,
          answer_index: 3,
          image: 'assets/word_images/cow.png',
          question: 'Lääy man cwøli nïdï?',
          options: ['Acwöt', 'Maath', 'Rwaath', 'Dhieng']),
      Questions(
          id: 3,
          answer_index: 0,
          image: 'assets/word_images/maize.png',
          question: 'Ab__c',
          options: ['ä', 'ää', 'ï', 'a']),
      Questions(
          id: 4,
          answer_index: 0,
          image: 'assets/word_images/leaf.png',
          question: 'Gïn cwøli nïdï',
          options: ['Bøøgø', 'Bøøngø', 'Bøønhø', 'Bøønyø']),
      Questions(
          id: 5,
          answer_index: 1,
          image: 'assets/word_images/hayna.png',
          question: ' Od__k',
          options: ['ie', 'ïë', 'ïe', 'ië']),
      Questions(
          id: 6,
          answer_index: 2,
          image: 'assets/word_images/lizard.png',
          question: 'Lääy man cwøli nïdï?',
          options: ['Digweey', 'Digweyi', 'Digwey', 'Dïgweyi']),
      Questions(
          id: 7,
          answer_index: 2,
          image: 'assets/word_images/maac.png',
          question: 'Man agïna ngø?',
          options: ['Mac', 'Mäc', 'Maac', 'Äpö']),
      Questions(
          id: 8,
          answer_index: 1,
          image: 'assets/word_images/hen.png',
          question: 'Man awinynyangø?',
          options: ['Gienø', 'Gwienø', 'Gwieno', 'Gwienö']),
      Questions(
          id: 9,
          answer_index: 3,
          image: 'assets/word_images/lion.png',
          question: ' __UU.',
          options: ['Ny', 'Nh', 'N', 'Ng']),
      Questions(
          id: 10,
          answer_index: 3,
          image: 'assets/word_images/croc.png',
          question: 'Man a lääna ngø?',
          options: ['Ngaany', 'Nyaanh', 'Ngweec', 'Nyaang']),
      Questions(
          id: 11,
          answer_index: 1,
          image: 'assets/word_images/house.png',
          question: 'Man angøøni?',
          options: ['Øtø', 'Øttø', 'Øtto', 'Ötto']),
      Questions(
          id: 12,
          answer_index: 2,
          image: 'assets/word_images/iith.png',
          question: 'Man agïnë ni kany en?',
          options: ['Ïth', 'Ïïth', 'Iith', 'Ith']),
      Questions(
          id: 13,
          answer_index: 0,
          image: 'assets/word_images/adiit.png',
          question: 'Man awinynyangø?',
          options: ['Adiit', 'Adiith', 'Adit', 'Adïït']),
      Questions(
          id: 14,
          answer_index: 2,
          image: 'assets/word_images/aleero.png',
          question: 'Man awinynyangø?',
          options: ['Alerø', 'Alëërø', 'Aleerø', 'Adwär']),
      Questions(
          id: 15,
          answer_index: 1,
          image: 'assets/word_images/culukuk.png',
          question: ' Man awinynyangø?',
          options: ['Aleerø', 'Culukuk', 'Ditoogo', 'Awëëlö']),
      Questions(
          id: 16,
          answer_index: 3,
          image: 'assets/word_images/dhithuuth.png',
          question: 'Man awinynyangø?',
          options: ['Owaaw', 'Akäna', 'Cilooro', 'Dhïthuuth']),
      Questions(
          id: 17,
          answer_index: 2,
          image: 'assets/word_images/dibal.png',
          question: 'Man awinynyangø?',
          options: ['Oköölö', 'Agaak', 'Dibal', 'Dibëël']),
      Questions(
          id: 18,
          answer_index: 0,
          image: 'assets/word_images/ojwaak.png',
          question: 'Man awinynyangø?',
          options: ['Ojwaak', 'Alwöör', 'Olwaarø', 'Aciik']),
      Questions(
          id: 19,
          answer_index: 0,
          image: 'assets/word_images/okook.png',
          question: ' Man awinynyangø?',
          options: ['Okøøk', 'Olwaarø', 'Aciik', 'Akuuru']),
      Questions(
          id: 20,
          answer_index: 3,
          image: 'assets/word_images/owaaw.png',
          question: 'Man awinynyangø?',
          options: ['Abwööla Täämö', 'Akäna', 'Dhïthuuth', 'Owaaw']),
      Questions(
          id: 21,
          answer_index: 1,
          image: 'assets/word_images/owiili.png',
          question: 'Man awinynyangø?',
          options: ['Owiili', 'Owïïlï', 'Ociruunya', 'Obwöla']),
      Questions(
          id: 22,
          answer_index: 3,
          image: 'assets/word_images/blank_image.png',
          question: 'Goore mo cwol ni cwaak ojabo amooe?',
          options: [
            'A  E  I  O  Ø',
            'A  E  B  C  Y',
            'A  U  G  J  K',
            'Ä  Ë  Ï  Ö  U'
          ]),
      Questions(
          id: 23,
          answer_index: 2,
          image: 'assets/word_images/blank_image.png',
          question: 'Kwön mano thaal ki møga abäc mo nyaaththa cwøli nïdï?.',
          options: [
            'Kwön bëëlö.',
            'Kwön abäc mo nyaathta.',
            'Kwön marra',
            'Kwön mara'
          ]),
      Questions(
          id: 24,
          answer_index: 1,
          image: 'assets/word_images/blank_image.png',
          question: 'Gweyi dhaanhø maae maa ninäk mo dhaanhø_______.',
          options: [
            'O ruu ni cämö',
            'O cämö ki wïth caami mo thööth',
            'O ruu ni bäng gïn mo ee camø',
            'O määthö ki pïï mo thööth'
          ]),
      Questions(
          id: 25,
          answer_index: 0,
          image: 'assets/word_images/blank_image.png',
          question: 'Goore mo cwol ni cwaak odiyyø amooe?',
          options: [
            'A  E  I  O  Ø',
            'A  E  B  C  Y',
            'A  U  G  J  K',
            'Ä  Ë  Ï  Ö  U'
          ]),
      Questions(
          id: 26,
          answer_index: 2,
          image: 'assets/word_images/blank_image.png',
          question: 'Akwöp dhaanhø maae maa ninäk mo dhaanhø_______.',
          options: [
            'O ruu ni cämö',
            'O cämö ki cam mo dwøng',
            'O ruu ni bäng gïn mo ee camø',
            'O cämo ki wïth caami mo thööth'
          ]),
      Questions(
          id: 27,
          answer_index: 2,
          image: 'assets/word_images/blank_image.png',
          question: 'Cöök wäru mana näk dhaagø cwøli gø nïdï?',
          options: ['Mara', 'Wära', 'Waa', 'Näära']),
      Questions(
          id: 28,
          answer_index: 3,
          image: 'assets/word_images/blank_image.png',
          question:
              'ninäk mo kiper dhaagø dikøbø na Ariet, kiper dïcwøø o købi nïdï?',
          options: ['Owäär', 'Obäng', 'Ojulu', 'Omøt']),
      Questions(
          id: 29,
          answer_index: 1,
          image: 'assets/word_images/blank_image.png',
          question: 'nyilaal mano nywøl køøt cïp jwøki cwøli nïdï?',
          options: [
            'Owäär / Awäär',
            'Okëëlö / Akëëlö',
            'Opiew / Apiew',
            'Ojwaatø / Ajwaatø'
          ]),
      Questions(
          id: 30,
          answer_index: 0,
          image: 'assets/word_images/blank_image.png',
          question:
              'nyeng mooa näk mo di caa kiper dhaagø ki dicwøø amooe dëët mooyi?',
          options: [
            'Nyigwøø ki Cham',
            'Nyigwøø  ko Oriemmi',
            'Nyimulu ko Okëëlö',
            'Ojwaatø ka Ajwaatø'
          ]),
      Questions(
          id: 31,
          answer_index: 1,
          image: 'assets/word_images/blank_image.png',
          question: 'Nyeng mano cak ki køøt juu mo peny amane?',
          options: ['Okëëlö', 'Ocale', 'Oriemmi', 'Abäng']),
    ];

    final PageController controller = PageController();
    return PageView.builder(
        scrollDirection: Axis.vertical,
        controller: controller,
        itemCount: questionsList.length,
        itemBuilder: (context, int index) {
          // if(index > )
          return Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '($finalResult / ${questionsList.length}) Jier løk pïëc mana näk kare.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 44, 77),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Column(
                  children: [
                    Card(
                      color: Colors.grey[98],
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 140,
                                width: 350,
                                child: Image(
                                  image: AssetImage(
                                    questionsList[index].image,
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              // if (index == 0)
                              Text(
                                '${questionsList[index].id}. ${questionsList[index].question}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.5,
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
                // SizedBox(
                //   height: 15,
                // ),
                Divider(),
                // SizedBox(
                //   height: 15,
                // ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, int listViewIndex) {
                        return Card(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: (selectedIndex == listViewIndex) &&
                                        (PageSelectedIndex == index)
                                    ? rightAnswerColor
                                    : null,
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              // tileColor: currentColor,
                              onTap: () {
                                setState(() {
                                  PageSelectedIndex = index;
                                  selectedIndex = listViewIndex;
                                  if (listViewIndex ==
                                      questionsList[index].answer_index) {
                                    if (index >= nextPageIndex) {
                                      trial = 0;
                                    }
                                    trial++;

                                    rightAnswerColor = Colors.green;
                                    if ((index >= nextPageIndex) &&
                                        (trial == 1)) {
                                      trial = 0;
                                      nextPageIndex++;
                                      finalResult = nextPageIndex;
                                    } else if (index >= nextPageIndex) {
                                      trial = 0;
                                    }
                                  } else {
                                    trial++;
                                    // if (index >= nextPageIndex) {
                                    //   trial = 0;
                                    // }

                                    rightAnswerColor = Colors.red;
                                  }
                                  print(trial);
                                });
                              },
                              leading: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Icon(Icons.circle_outlined),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  questionsList[index].options[listViewIndex],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    // fontSize: 20
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            controller.previousPage(
                                duration: Duration(milliseconds: 700),
                                curve: Curves.easeInOut);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.navigate_before),
                            Text(
                              'Døø Køøri',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if ((index + 1) == questionsList.length) {
                              Result(finalResult: finalResult);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result(
                                            finalResult: finalResult,
                                          )));
                            } else {
                              controller.nextPage(
                                  duration: Duration(milliseconds: 700),
                                  curve: Curves.easeInOut);
                            }
                          });
                        },
                        child: Row(
                          children: [
                            Text('Pöödhï',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Icon(Icons.navigate_next),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
