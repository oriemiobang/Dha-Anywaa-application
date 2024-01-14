class Questions {
  int id;
  String image;
  String question, answer_index;
  List<String> options;

  Questions(
      {required this.id,
      required this.answer_index,
      required this.image,
      required this.question,
      required this.options});
}
