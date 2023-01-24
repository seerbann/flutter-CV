import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV-Chiriac Serban',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

_launchURLBrowser() async {
  var url = Uri.parse("https://github.com/seerbann");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

var description = Container(
  child: Text(
      "       Highly motivated computer science student with a strong interest in sports and a strong and dedicated team player. Working well in a team environment, as well as excellent communication and interpersonal skills. Seeking to leverage technical skills to cotribute to a dynamic organization. ",
      style: TextStyle(fontSize: 14.0, height: 1.5)),
);

var dots = Column(
  children: [
    Text("\u2022 myMail@gmail.com"),
  ],
);

var education = Column(
  children: [
    SizedBox(
      height: 15,
    ),
    Text("October, 2022 - Present"),
    SizedBox(
      height: 10,
    ),
    Text("\u2022 Faculty of Computer Science - Iasi")
  ],
);

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            hoverColor: Colors.white.withOpacity(0.3),
            icon: Image.asset(
              './assets/github-mark-white.png',
              fit: BoxFit.cover,
            ),
            onPressed: () {
              _launchURLBrowser();
            }),
        title: Text(
          "Chiriac Serban-Mihail",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      description,
                      SizedBox(
                        height: 20,
                      ),
                      dots,
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Education",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.grey,
                        ),
                      ),
                      education,
                    ],
                  ),
                ),
                SizedBox(
                  width: 350,
                ),
                Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Container(
                          //color: Color.fromRGBO(226, 220, 220, 1),
                          child: const Text(
                            'Projects',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "\u2022 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived"),
                        SizedBox(height: 10),
                        Text('\u2022 Bullet Text'),
                        SizedBox(height: 10),
                        Text('\u2022 Bullet Text'),
                        SizedBox(height: 10),
                        Text('\u2022 Bullet Text'),
                        SizedBox(height: 10),
                        Text('\u2022 Bullet Text'),
                      ],
                    )),
              ]),
        ),
      ),
    );
  }
}
