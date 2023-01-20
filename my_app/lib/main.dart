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
      theme: ThemeData(
        primarySwatch: Colors.grey,
        secondaryHeaderColor: Colors.grey,
      ),
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
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  ),
);

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset(
              './assets/github-mark-white.png',
              fit: BoxFit.cover,
            ),
            onPressed: () {
              _launchURLBrowser();
            }),
        centerTitle: true,
        title: Text("Chiriac Serban-Mihail"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
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
                      description
                    ],
                  ),
                ),
                SizedBox(
                  width: 350,
                ),
                Expanded(
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
                    Text('\u2022 Bullet Text'),
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
