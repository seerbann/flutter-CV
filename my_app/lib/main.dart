import 'dart:html';
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
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Color.fromRGBO(255, 255, 255, 1),
          displayColor: Colors.blue,
        ),
      ),
      home: const aplicatia(),
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
    Text("\u2022 Faculty of Computer Science - Iasi"),
    SizedBox(
      height: 5,
    ),
    Text(
      "Relavant Coursework",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Text("-Data Structures"),
  ],
);

var proj = Column(
  children: [
    new InkWell(
        child: new Text(
          '\u2022 Analogic and Digital Clock',
          style: TextStyle(color: Colors.blue),
        ),
        onTap: () => launch(
            'https://github.com/seerbann/Analogic-and-Digital-Clock_Faculty-Project'))
  ],
);

class aplicatia extends StatelessWidget {
  const aplicatia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.white))),
                      width: 200,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(width: 50),
                                    bottom: BorderSide(width: 5))),
                            child: Image.asset(
                              "./assets/pozaCV.png",
                              height: 200,
                              width: 200,
                            ),
                          ),
                          Text(
                            'Chiriac Serban Mihail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 150,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(width: 20),
                                      bottom: BorderSide(width: 15))),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'home',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 20),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(width: 20),
                                      bottom: BorderSide(width: 15))),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'curriculum vitae',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 20),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(width: 20),
                                      bottom: BorderSide(width: 15))),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'contact',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 20),
                              )),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(width: 20),
                              )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Image.asset(
                                          "./assets/github-mark-white.png",
                                          width: 34,
                                          height: 34,
                                        )),
                                        Expanded(
                                          child: Image.asset(
                                            "./assets/Linkedin.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            "./assets/Instagram_icon.png",
                                            width: 35,
                                            height: 35,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border(top: BorderSide(width: 20))),
                                    child: SelectableText(
                                      "serbanm.chiriac@gmail.com",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.black,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(width: 300),
                                    right: BorderSide(width: 250))),
                            child: Text(
                              'Hello,',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 75,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 850,
                            height: 200,
                            child: Text(
                              'I am a highly motivated computer science student based in Iasi , Romania with a strong interest in sports and a strong and dedicated team player. Working well in a team environment, as well as excellent communication and interpersonal skills.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  fontSize: 25,
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
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
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: const Text(
                          'Description',
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
                      description,
                      SizedBox(
                        height: 20,
                      ),
                      dots,
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: Text(
                          "Education",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.grey,
                          ),
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
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2)),
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
                        proj,
                        Text(
                            " Simple clock program written in C++ with a simple graphic library (Borland Graphics Interface)."),
                        SizedBox(height: 20),
                        Text('\u2022 Bullet Text'),
                        SizedBox(height: 10),
                        Text('Desc'),
                        SizedBox(height: 20),
                        Text('\u2022 Bullet Text'),
                        SizedBox(height: 10),
                        Text('Desc'),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: Text(
                            'Skills',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    )),
              ]),
        ),
      ),
    );
  }
}
