import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryView extends StatefulWidget {
  const PrimaryView({Key? key}) : super(key: key);

  @override
  State<PrimaryView> createState() => _PrimaryViewState();
}

class _PrimaryViewState extends State<PrimaryView> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Image(image: AssetImage("assets/image/logo.jpg"), width: 300, height: 400, ),
                  const Text("Learning English",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 23,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)
                  ),
                  OutlinedButton(onPressed: (){Navigator.of(context).popAndPushNamed('/second_view');}, child: Text("START")),

                ]
            )
        )
    );
  }
}

