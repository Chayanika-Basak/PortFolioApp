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
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          final Uri _url =
                          Uri.parse('https://github.com/Chayanika-Basak');
                          _launchUrl(_url);
                        },
                        child: Card(
                          color: Colors.green[900],
                          child: ListTile(
                            title: Text(
                                'Spirit Pokemon Project',
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.lightGreen[200],
                                  )
                            ),
                            subtitle: Padding(
                              padding: EdgeInsets.symmetric(vertical:10),
                              child: Text(
                                'Project to test my skills of web development in java',
                                style: TextStyle(
                                  fontFamily: 'Acme',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          final Uri _url =
                          Uri.parse('https://github.com/Chayanika-Basak/Book-My-Show');
                          _launchUrl(_url);
                        },
                        child: Card(
                          color: Colors.green[900],
                          child: ListTile(
                            title: Text(
                                'Book My Show Project',
                                style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.lightGreen[200],
                                )
                            ),
                            subtitle: Padding(
                              padding: EdgeInsets.symmetric(vertical:10),
                              child: Text(
                                'Project to test my skills of web development using MERN Stack',
                                style: TextStyle(
                                  fontFamily: 'Acme',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          final Uri _url =
                          Uri.parse('https://github.com/Chayanika-Basak/Twitter-Sentiment-Analysis');
                          _launchUrl(_url);
                        },
                        child: Card(
                          color: Colors.green[900],
                          child: ListTile(
                            title: Text(
                                'Twitter Sentiment Analysis',
                                style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.lightGreen[200],
                                )
                            ),
                            subtitle: Padding(
                              padding: EdgeInsets.symmetric(vertical:10),
                              child: Text(
                                'Project to test my skills of applications of machine learning and deep learning',
                                style: TextStyle(
                                  fontFamily: 'Acme',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
        ),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}