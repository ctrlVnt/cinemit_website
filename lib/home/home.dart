
import 'package:cinemit_website/global/utils.dart';
import 'package:cinemit_website/home/body/body.dart';
import 'package:cinemit_website/home/footer/footer.dart';
import 'package:cinemit_website/home/header/header.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinemit',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _Home createState() => _Home();
}


class _Home extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFff320a),
        title: Image.asset(
          'lib/assets/logotypeWhite.png',
          height: 25,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              launchURL('https://play.google.com/store/apps/details?id=com.ctrlvnt.cinemit');
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 141, 28, 5))
            ),
            child : Text(
              'Download',
              style: TextStyle(
                color: Colors.white
                ),
              ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Header(),
              Body(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
