
import 'package:flutter/material.dart';
import 'data_holder.dart';


class ThirdView extends StatelessWidget {

  ThirdView( {super.key,});

  //final VerbModel verb = DataHolder().indexVerb as VerbModel;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrasal Verb Details"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Phrasal Verb :",
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),),
              Text("${DataHolder().indexVerb.verb}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              const Text("Definition :",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),),
              Text("${DataHolder().indexVerb.definition}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  )),
              OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).popAndPushNamed('/second_view');
                  },
                  child: const Text("BACK"),
              )
            ],
          )
      )
    );
  }
}