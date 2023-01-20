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
  child: Text('descrierea mea'),
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
          padding: const EdgeInsets.all(20.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [description, Text('DATA')],
                ),
                SizedBox(
                  width: 550,
                ),
                Column(
                  children: [Text('otger column'), Text('otger column')],
                )
              ]),
        ),
      ),
    );
  }
}
