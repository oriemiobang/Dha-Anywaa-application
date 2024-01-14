import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri webUrl = Uri.parse('https://dha-anywaa-privacy.netlify.app/');
final Uri moreWebUrl = Uri.parse('https://dha-anywaa-app.netlify.app/');

// class About extends StatelessWidget {
//   const About({super.key});
class About extends StatefulWidget {
  const About({super.key});

  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    // String? encodeQueryParameters(Map<String, String> params) {
    //   return params.entries
    //       .map((MapEntry<String, String> e) =>
    //           '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
    //       .join('&');
    // }
    Future<void> _openMoreUrl() async {
      try {
        await launchUrl(
          moreWebUrl,
          webOnlyWindowName: '_blank',
          mode: LaunchMode.externalApplication,
          webViewConfiguration:
              const WebViewConfiguration(enableJavaScript: true),
        );
      } catch (Exception) {}
    }

    void sendEmail() {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'oriemiobango@gmail.com',
        // query: encodeQueryParameters(<String, String>{
        //   'subject': 'Example Subject & Symbols are allowed!',
        // }),
      );
      launchUrl(emailLaunchUri);
    }

    Future<void> _openUrl() async {
      try {
        await launchUrl(
          webUrl,
          webOnlyWindowName: '_blank',
          mode: LaunchMode.externalApplication,
          webViewConfiguration:
              const WebViewConfiguration(enableJavaScript: true),
        );
      } catch (Exception) {}
    }

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
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: Image.asset('assets/word_images/awal_icon.png'),
                      ),
                      Text(
                        'Dha Anywaa',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Color.fromARGB(255, 4, 28, 49),
                ),
                SelectableText(
                    "\nThis is a Dha Anywaa app designed to assist individuals in learning to read the Anywaa language."
                    " It is user-friendly, featuring both pictures and audio elements to enhance the learning experience. Geared towards absolute beginners,"
                    " the app guides users through each step, facilitating the process of reading in Dha Anywaa.\n\n"),
                Container(
                  // height: 40,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 223, 212, 212),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Version: 1.0.3',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(99, 0, 0, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.copyright,
                      color: Color.fromARGB(255, 162, 158, 158),
                    ),
                    title: Text(
                      '2024 BellaTech',
                      style:
                          TextStyle(color: Color.fromARGB(255, 162, 158, 158)),
                    ),
                  ),
                ),
                TextButton.icon(
                    onPressed: () {
                      setState(() {
                        _openUrl();
                      });
                      ;
                    },
                    icon: Icon(Icons.privacy_tip),
                    label: Text('Privacy Policy')),
                Container(
                  child: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          sendEmail();
                        });
                      },
                      icon: Icon(Icons.quick_contacts_mail),
                      label: Text('Contact Us')),
                ),
                Container(
                  child: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          _openMoreUrl();
                        });
                      },
                      icon: Icon(Icons.more_horiz_outlined),
                      label: Text('Read More')),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
