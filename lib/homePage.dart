import 'package:flutter/material.dart';
import 'package:portfolio/Projects.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.lightGreen[200],
              backgroundImage: NetworkImage(
                "https://drive.google.com/uc?export=view&id=12twkf750lv_1ADiuRwbiJKW0u1_NJ6iq",
              ),
            ),
          ),
          Text('Chayanika Basak',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Merriweather',
                color: Colors.white,
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Text(
              'CS-AI Undergrad',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Acme',
                color: Colors.white,
              ),
            ),
          ),
          Container(
              width: 400,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightGreen[200],
              ),
              child: Row(children: [
                Icon(Icons.email_outlined, color: Colors.green[900]),
                SizedBox(width: 15),
                Text('chayanika071btcsai21@igdtuw.ac.in',
                    style: TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 17,
                      color: Colors.green[900],
                    ))
              ])),
          GestureDetector(
            onTap: () => {Navigator.pushNamed(context, 'projects')},
            child: Container(
                width: 400,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen[200],
                ),
                child: Row(children: [
                  Icon(Icons.folder_copy, color: Colors.green[900]),
                  SizedBox(width: 15),
                  Text(
                    'My Projects',
                    style: TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 17,
                      color: Colors.green[900],
                    ),
                  )
                ])),
          ),
          GestureDetector(
            onTap: () {
              final Uri _url = Uri.parse('https://www.linkedin.com/in/chayanika-basak-183394239/');
              _launchUrl(_url);
            },
            child: Container(
                width: 400,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen[200],
                ),
                child: Row(children: [
                  Icon(Icons.connect_without_contact, color: Colors.green[900],),
                  SizedBox(width: 15),
                  Text(
                    'LinkedIn',
                    style: TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 17,
                      color: Colors.green[900],
                    ),
                  )
                ])),
          ),
        ]));
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
