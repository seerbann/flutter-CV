import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'OnHover.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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

_launchURLBrowser() async {
  var url = Uri.parse("https://github.com/seerbann");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchURLBrowser_linkedin() async {
  var url =
      Uri.parse("https://www.linkedin.com/in/serban-mihail-chiriac-479b68259/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchURLBrowser_inst() async {
  var url = Uri.parse("https://www.instagram.com/chiriacserbann/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

var _skills = Container(
  decoration: BoxDecoration(border: Border(left: BorderSide(width: 20))),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '\u2022 Flutter',
        style: TextStyle(fontFamily: 'Outfit', fontSize: 25),
      ),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 Git', style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 Dart', style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 C/C++',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 HTML, CSS',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 JavaScript',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 Figma',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 20,
      ),
    ],
  ),
);

var _languages = Container(
  decoration: BoxDecoration(border: Border(left: BorderSide(width: 20))),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('\u2022 english - understanding & talking freely (B2 level)',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 romanian - native level',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25))
    ],
  ),
);

var _softSkills = Container(
  decoration: BoxDecoration(border: Border(left: BorderSide(width: 20))),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '\u2022 communication',
        style: TextStyle(fontFamily: 'Outfit', fontSize: 25),
      ),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 teamwork',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 problem-solving',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 time management',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 persuasion',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      Text('\u2022 creativity',
          style: TextStyle(fontFamily: 'Outfit', fontSize: 25)),
      SizedBox(
        height: 5,
      ),
      SizedBox(
        height: 20,
      ),
    ],
  ),
);

class aplicatia extends StatefulWidget {
  const aplicatia({super.key});

  @override
  State<aplicatia> createState() => _aplicatiaState();
}

PageController _controller = PageController();

class _aplicatiaState extends State<aplicatia> {
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
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(width: 25),
                                    left: BorderSide(width: 20))),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'Chiriac Serban Mihail',
                                  textStyle: const TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Outfit'),
                                  speed: const Duration(milliseconds: 250),
                                ),
                              ],
                              isRepeatingAnimation: false,
                            ),
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
                            child: OnHover(
                              builder: (isHovered) {
                                final _color =
                                    isHovered ? Colors.purple : Colors.white;
                                return InkWell(
                                  child: Text(
                                    'home',
                                    style: TextStyle(
                                        color: _color,
                                        fontFamily: 'Roboto',
                                        fontSize: 20),
                                  ),
                                  onTap: () {
                                    _scrollToIndex(-1);
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(width: 20),
                                    bottom: BorderSide(width: 15))),
                            alignment: Alignment.centerLeft,
                            child: OnHover(
                              builder: (isHovered) {
                                final _color =
                                    isHovered ? Colors.purple : Colors.white;
                                return InkWell(
                                  child: Text(
                                    'curriculum vitae',
                                    style: TextStyle(
                                        color: _color,
                                        fontFamily: 'Roboto',
                                        fontSize: 20),
                                  ),
                                  onTap: () {
                                    _scrollToIndex(0);
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(width: 20),
                                    bottom: BorderSide(width: 15))),
                            alignment: Alignment.centerLeft,
                            child: OnHover(
                              builder: (isHovered) {
                                final _color =
                                    isHovered ? Colors.purple : Colors.white;
                                return InkWell(
                                  child: Text(
                                    'contact',
                                    style: TextStyle(
                                        color: _color,
                                        fontFamily: 'Roboto',
                                        fontSize: 20),
                                  ),
                                  onTap: () {
                                    _launchURLBrowser();
                                  },
                                );
                              },
                            ),
                          ),
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
                                        InkWell(
                                          child: Image.asset(
                                            "./assets/github-mark-white.png",
                                            width: 34,
                                            height: 34,
                                          ),
                                          onTap: () {
                                            _launchURLBrowser();
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "./assets/Linkedin.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                          onTap: () {
                                            _launchURLBrowser_linkedin();
                                          },
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            "./assets/Instagram_icon.png",
                                            width: 35,
                                            height: 35,
                                          ),
                                          onTap: () {
                                            _launchURLBrowser_inst();
                                          },
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
                    child: RawScrollbar(
                      controller: _controller,
                      scrollbarOrientation: ScrollbarOrientation.right,
                      thumbColor: Colors.purple.withOpacity(0.9),
                      child: ListView(
                        controller: _controller,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border(
                                    left: BorderSide(width: 200),
                                    top: BorderSide(width: 300))),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Hello,',
                                    style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontSize: 75,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(width: 250),
                                      ),
                                    ),
                                    // width: 850,
                                    // height: 150,
                                    child: Flexible(
                                      child: Text(
                                        'I am a highly motivated computer science student based in Iasi , Romania with a strong interest in sports and a strong, dedicated team player. Working well in a team environment, as well as excellent communication and interpersonal skills.',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            height: 1.3,
                                            fontFamily: 'Outfit',
                                            fontSize: 25,
                                            color:
                                                Colors.white.withOpacity(0.8)),
                                      ),
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          left: BorderSide(width: 20),
                                          top: BorderSide(width: 20))),
                                  child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.purple),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: (() {
                                        _scrollToIndex(0);
                                      }),
                                      child: Text(
                                        "See my CV",
                                        style: TextStyle(
                                            fontFamily: 'Outfit', fontSize: 25),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 1000,
                            height: 500,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 500,
                                    child: Text(
                                      'Projects',
                                      style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Container(
                                    height: 500,
                                    child: Text(
                                      'Education',
                                      style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Container(
                                height: 1000,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.white))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Skills',
                                      style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontSize: 50,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '  technical skills:',
                                      style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontSize: 30,
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    _skills,
                                    Text(
                                      '  language proeficiency:',
                                      style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontSize: 30,
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    _languages,
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '  soft skills:',
                                      style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontSize: 30,
                                          color: Colors.white.withOpacity(0.6)),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    _softSkills,
                                  ],
                                ),
                              )
                            ],
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

void _scrollToIndex(int index) {
  _controller.animateToPage(index + 1,
      duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
}
