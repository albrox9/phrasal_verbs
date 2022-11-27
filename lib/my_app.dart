import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phrasal_verbs/first_view.dart';
import 'package:phrasal_verbs/second_view.dart';
import 'package:phrasal_verbs/third_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
      ),
      title: 'Welcome to The Adventurer',
      initialRoute:'/',
      routes: {
        '/': (context) => const PrimaryView(),
        '/second_view': (context) => const SecondView(),
        '/third_view': (context) =>ThirdView(),
      },
    );
  }
}
