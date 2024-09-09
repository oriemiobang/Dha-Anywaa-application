import 'package:dha_anywaaa/components/savedData.dart';
import 'package:flutter/material.dart';

class NameEntry extends StatefulWidget {
  const NameEntry({super.key});

  @override
  State<NameEntry> createState() => _NameEntryState();
}

class _NameEntryState extends State<NameEntry> {
  @override
  SavedData savedData = SavedData();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = '';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Welcome to Obwöc paac',
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  ' Dha anywaa learning hub',
                  style: TextStyle(fontSize: 20, color: Colors.grey[900]),
                ),
              ),
              SizedBox(
                height: 160,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      // obscureText: true,
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'name is required';
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(66, 165, 245,
                                    1)), // Change color when focused
                          ),
                          // fillColor: currentTheme == Brightness.dark
                          //     ? const Color.fromARGB(255, 19, 19, 19)
                          //     : Colors.white,
                          filled: true,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide()),
                          labelText: 'Enter your name',
                          labelStyle: const TextStyle(
                              color: Colors.grey, fontStyle: FontStyle.italic)),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Card(
                      color: Colors.blue,
                      elevation: 10,
                      // shape:
                      child: IconButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            savedData.setName(name);

                            Navigator.pushReplacementNamed(
                                context, 'home_page');
                          } else {
                            print('invalid name: $name');
                          }
                        },
                        icon: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
