import 'package:dha_anywaaa/Questions.dart';
import 'package:dha_anywaaa/result_page.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int selectedIndex = -1;
  int PageSelectedIndex = -1;
  int finalResult = 0;
  List answeredQuestions = [];

  List questionsList = [
    Questions(
        id: 1,
        answer_index: 'Rïï',
        image: 'assets/word_images/giraffe.png',
        question: 'Lääy man cwøli nïdï?',
        options: ['Rii', 'Riï', 'Rïï', 'Arëën']..shuffle()),
    Questions(
        id: 2,
        answer_index: 'Dhieng',
        image: 'assets/word_images/cow.png',
        question: 'Lääy man cwøli nïdï?',
        options: ['Acwöt', 'Maath', 'Rwaath', 'Dhieng']..shuffle()),
    Questions(
        id: 3,
        answer_index: 'ä',
        image: 'assets/word_images/maize.png',
        question: 'Ab__c',
        options: ['ä', 'ää', 'ï', 'a']..shuffle()),
    Questions(
        id: 4,
        answer_index: 'Bøøgø',
        image: 'assets/word_images/leaf.png',
        question: 'Gïn cwøli nïdï',
        options: ['Bøøgø', 'Bøøngø', 'Bøønhø', 'Bøønyø']..shuffle()),
    Questions(
        id: 5,
        answer_index: 'ïë',
        image: 'assets/word_images/hayna.png',
        question: ' Od__k',
        options: ['ie', 'ïë', 'ïe', 'ië']..shuffle()),
    Questions(
        id: 6,
        answer_index: 'Digwey',
        image: 'assets/word_images/lizard.png',
        question: 'Lääy man cwøli nïdï?',
        options: ['Digweey', 'Digweyi', 'Digwey', 'Dïgweyi']..shuffle()),
    Questions(
        id: 7,
        answer_index: 'Maac',
        image: 'assets/word_images/maac.png',
        question: 'Man agïna ngø?',
        options: ['Mac', 'Mäc', 'Maac', 'Äpö']..shuffle()),
    Questions(
        id: 8,
        answer_index: 'Gwienø',
        image: 'assets/word_images/hen.png',
        question: 'Man awinynyangø?',
        options: ['Gienø', 'Gwienø', 'Gwieno', 'Gwienö']..shuffle()),
    Questions(
        id: 9,
        answer_index: 'Ng',
        image: 'assets/word_images/lion.png',
        question: ' __UU.',
        options: ['Ny', 'Nh', 'N', 'Ng']..shuffle()),
    Questions(
        id: 10,
        answer_index: 'Nyaang',
        image: 'assets/word_images/croc.png',
        question: 'Man a lääna ngø?',
        options: ['Ngaany', 'Nyaanh', 'Ngweec', 'Nyaang']..shuffle()),
    Questions(
        id: 11,
        answer_index: 'Øttø',
        image: 'assets/word_images/house.png',
        question: 'Man angøøni?',
        options: ['Øtø', 'Øttø', 'Øtto', 'Ötto']..shuffle()),
    Questions(
        id: 12,
        answer_index: 'Iith',
        image: 'assets/word_images/iith.png',
        question: 'Man agïnë ni kany en?',
        options: ['Ïth', 'Ïïth', 'Iith', 'Ith']..shuffle()),
    Questions(
        id: 13,
        answer_index: 'Adiit',
        image: 'assets/word_images/adiit.png',
        question: 'Man awinynyangø?',
        options: ['Adiit', 'Adiith', 'Adit', 'Adïït']..shuffle()),
    Questions(
        id: 14,
        answer_index: 'Aleerø',
        image: 'assets/word_images/aleero.png',
        question: 'Man awinynyangø?',
        options: ['Alerø', 'Alëërø', 'Aleerø', 'Adwär']..shuffle()),
    Questions(
        id: 15,
        answer_index: 'Culukuk',
        image: 'assets/word_images/culukuk.png',
        question: ' Man awinynyangø?',
        options: ['Aleerø', 'Culukuk', 'Ditoogo', 'Awëëlö']..shuffle()),
    Questions(
        id: 16,
        answer_index: 'Dhïthuuth',
        image: 'assets/word_images/dhithuuth.png',
        question: 'Man awinynyangø?',
        options: ['Owaaw', 'Akäna', 'Cilooro', 'Dhïthuuth']..shuffle()),
    Questions(
        id: 17,
        answer_index: 'Dibal',
        image: 'assets/word_images/dibal.png',
        question: 'Man awinynyangø?',
        options: ['Oköölö', 'Agaak', 'Dibal', 'Dibëël']..shuffle()),
    Questions(
        id: 18,
        answer_index: 'Ojwaak',
        image: 'assets/word_images/ojwaak.png',
        question: 'Man awinynyangø?',
        options: ['Ojwaak', 'Alwöör', 'Olwaarø', 'Aciik']..shuffle()),
    Questions(
        id: 19,
        answer_index: 'Okøøk',
        image: 'assets/word_images/okook.png',
        question: ' Man awinynyangø?',
        options: ['Okøøk', 'Olwaarø', 'Aciik', 'Akuuru']..shuffle()),
    Questions(
        id: 20,
        answer_index: 'Owaaw',
        image: 'assets/word_images/owaaw.png',
        question: 'Man awinynyangø?',
        options: ['Abwööla Täämö', 'Akäna', 'Dhïthuuth', 'Owaaw']..shuffle()),
    Questions(
        id: 21,
        answer_index: 'Owïïlï',
        image: 'assets/word_images/owiili.png',
        question: 'Man awinynyangø?',
        options: ['Owiili', 'Owïïlï', 'Ociruunya', 'Obwöla']..shuffle()),
    Questions(
        id: 22,
        answer_index: 'Ä  Ë  Ï  Ö  U',
        image: 'assets/word_images/blank_image.png',
        question: 'Goore mo cwøl ni cwaak ojabo amooe?',
        options: [
          'A  E  I  O  Ø',
          'A  E  B  C  Y',
          'A  U  G  J  K',
          'Ä  Ë  Ï  Ö  U'
        ]..shuffle()),
    Questions(
        id: 23,
        answer_index: 'Kwön marra',
        image: 'assets/word_images/blank_image.png',
        question: 'Kwön mano thaal ki møga abäc mo nyaaththa cwøli nïdï?.',
        options: [
          'Kwön bëëlö.',
          'Kwön abäc mo nyaathta.',
          'Kwön marra',
          'Kwön mara'
        ]..shuffle()),
    Questions(
        id: 24,
        answer_index: 'O cämö ki wïth caami mo thööth',
        image: 'assets/word_images/blank_image.png',
        question: 'Gweyi dhaanhø maae maa ninäk mo dhaanhø_______.',
        options: [
          'O ruu ni cämö',
          'O cämö ki wïth caami mo thööth',
          'O ruu ni bäng gïn mo ee camø',
          'O määthö ki pïï mo thööth'
        ]..shuffle()),
    Questions(
        id: 25,
        answer_index: 'A  E  I  O  Ø',
        image: 'assets/word_images/blank_image.png',
        question: 'Goore mo cwøl ni cwaak odiyyø amooe?',
        options: [
          'A  E  I  O  Ø',
          'A  E  B  C  Y',
          'A  U  G  J  K',
          'Ä  Ë  Ï  Ö  U'
        ]..shuffle()),
    Questions(
        id: 26,
        answer_index: 'O ruu ni bäng gïn mo ee camø',
        image: 'assets/word_images/blank_image.png',
        question: 'Akwöp dhaanhø maae maa ninäk mo dhaanhø_______.',
        options: [
          'O ruu ni cämö',
          'O cämö ki cam mo dwøng',
          'O ruu ni bäng gïn mo ee camø',
          'O cämo ki wïth caami mo thööth'
        ]..shuffle()),
    Questions(
        id: 27,
        answer_index: 'Waa',
        image: 'assets/word_images/blank_image.png',
        question: 'Cöök wäru mana näk dhaagø cwøli gø nïdï?',
        options: ['Mara', 'Wära', 'Waa', 'Näära']..shuffle()),
    Questions(
        id: 28,
        answer_index: 'Omøt',
        image: 'assets/word_images/blank_image.png',
        question:
            'ninäk mo kiper dhaagø dikøbø na Ariet, kiper dïcwøø o købi nïdï?',
        options: ['Owäär', 'Obäng', 'Ojulu', 'Omøt']..shuffle()),
    Questions(
        id: 29,
        answer_index: 'Okëëlö / Akëëlö',
        image: 'assets/word_images/blank_image.png',
        question: 'nyilaal mano nywøl køøt cïp jwøki cwøli nïdï?',
        options: [
          'Owäär / Awäär',
          'Okëëlö / Akëëlö',
          'Opiew / Apiew',
          'Ojwaatø / Ajwaatø'
        ]..shuffle()),
    Questions(
        id: 30,
        answer_index: 'Nyigwøø ki Cham',
        image: 'assets/word_images/blank_image.png',
        question:
            'nyeng mooa näk mo di caa kiper dhaagø ki dicwøø amooe dëët mooyi?',
        options: [
          'Nyigwøø ki Cham',
          'Nyigwøø  ko Oriemmi',
          'Nyimulu ko Okëëlö',
          'Ojwaatø ka Ajwaatø'
        ]..shuffle()),
    Questions(
        id: 31,
        answer_index: 'Ocale',
        image: 'assets/word_images/blank_image.png',
        question: 'Nyeng mano cak ki køøt juu mo peny amane?',
        options: ['Okëëlö', 'Ocale', 'Oriemmi', 'Abäng']..shuffle()),
  ]..shuffle();

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView.builder(
        scrollDirection: Axis.vertical,
        controller: controller,
        itemCount: questionsList.length,
        itemBuilder: (context, int index) {
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
                              Text(
                                '${index + 1} ${questionsList[index].question}',
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
                Divider(),
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
                                    ? (questionsList[index]
                                                .options[listViewIndex] ==
                                            questionsList[index].answer_index
                                        ? Colors.green
                                        : Colors.red)
                                    : (questionsList[index]
                                                    .options[listViewIndex] ==
                                                questionsList[index]
                                                    .answer_index &&
                                            PageSelectedIndex == index
                                        ? Colors.green.withOpacity(0.7)
                                        : null),
                                borderRadius: BorderRadius.circular(10)),
                            child: AbsorbPointer(
                              absorbing: PageSelectedIndex == index,
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    answeredQuestions
                                        .add(questionsList[index].id);
                                    int count = answeredQuestions
                                        .where((number) =>
                                            number == questionsList[index].id)
                                        .length;

                                    PageSelectedIndex = index;
                                    selectedIndex = listViewIndex;

                                    if (questionsList[index]
                                                .options[listViewIndex] ==
                                            questionsList[index].answer_index &&
                                        count == 1) {
                                      finalResult += 1;
                                    }
                                  });
                                },
                                leading: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Icon(Icons.circle_outlined),
                                ),
                                title: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    questionsList[index].options[listViewIndex],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
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
