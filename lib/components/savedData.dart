import 'package:shared_preferences/shared_preferences.dart';

class SavedData {
  String name = '';

  // boook
  Future<String> getName() async {
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name') ?? "guess";

    return name;
  }

  Future<void> setName(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', value);
  }

  // book index
}
