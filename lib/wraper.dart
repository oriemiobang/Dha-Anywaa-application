import 'package:dha_anywaaa/components/savedData.dart';
import 'package:dha_anywaaa/home_page.dart';
import 'package:dha_anywaaa/nameEntry.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  String name = '';
  SavedData savedData = SavedData();
  @override
  void initState() {
    _refresh();
    // TODO: implement initState
    super.initState();
  }

  void _refresh() async {
    final currentName = await savedData.getName();

    setState(() {
      name = currentName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return name != 'guess' ? HomePage() : NameEntry();
  }
}
