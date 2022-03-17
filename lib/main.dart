import 'package:auto_size_text/auto_size_text.dart';
import 'package:demoapp/screens/items_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttffkjdhfkjer Demo',
      theme: ThemeData(
        fontFamily: "Stadt",
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _navigationToItemScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ItemsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFDAD3C8),
        body: const BodyScreen(),
        floatingActionButton: SizedBox(
          height: 90,
          width: 90,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: _navigationToItemScreen,
              tooltip: 'Increment',
              child: AutoSizeText(
                "start".toUpperCase(),
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Everett",
                ),
              ),
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class BodyScreen extends StatelessWidget {
  const BodyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            "Elegant simple Furnitures.",
            maxLines: 3,
            style: TextStyle(fontSize: 55),
          ),
          Center(
            child: Stack(clipBehavior: Clip.none, children: [
              AspectRatio(
                aspectRatio: 370 / 440,
                child: Image(image: AssetImage('assets/images/main_photo.png')),
              ),
            ]),
          ),
          SizedBox(
            width: 250,
            child: AutoSizeText(
              "Affordable home furniture designs & ideas.",
              style: TextStyle(fontFamily: "Everett", fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
