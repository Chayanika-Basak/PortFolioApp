import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.lightGreenAccent[100],
            title: Text(
              'My Projects',
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green[900],
              ),
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.green[900]
            )
        ),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        final Uri _url =
                        Uri.parse('https://github.com/Chayanika-Basak');
                        _launchUrl(_url);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text('Spirit Pokemon Project',
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.lightGreen[200],
                            )),
                      ),
                    ),
                    Text(
                      'Project to test my skills of web development in java',
                      style: TextStyle(
                        fontFamily: 'Acme',
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ])),
          Divider(thickness: 2, color: Colors.lightGreen[200]),
          GestureDetector(
            onTap: () {
              final Uri _url =
              Uri.parse('https://github.com/Chayanika-Basak/Book-My-Show');
              _launchUrl(_url);
            },
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text('Book My Show Project',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.lightGreen[200])),
                      ),
                      Text(
                        'Project to test my skills of web development using MERN Stack',
                        style: TextStyle(
                          fontFamily: 'Acme',
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ])),
          ),
          Divider(thickness: 2, color: Colors.lightGreen[200]),
        ]));
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

// Row(
//     children: [
//       Icon(
//           Icons.arrow_back,
//         color: Colors.green[900],
//       ),
//       SizedBox(width: 15),
//       Text(
//           'My Projects',
//       style: TextStyle(
//         fontFamily: 'Merriweather',
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         color: Colors.green[900],
//       ),
//       ),
//     ]
//   )
