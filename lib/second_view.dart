import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phrasal_verbs/data_holder.dart';


import 'Verb.dart';


class SecondView extends StatefulWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  State<SecondView> createState() => _SecondViewState();
}


class _SecondViewState extends State<SecondView> {

  //var json;




  Future<List<Verb>> fetchJson() async{

    final response = await rootBundle.loadString("assets/image/json_string.json");
    List jsonresponse = json.decode(response);


    DataHolder().ulist= jsonresponse.map((e) => Verb.fromJson(e)).toList();


  return DataHolder().ulist;
  }

  
  @override
  void initState() {
    fetchJson().then((value){
      setState(() {
        DataHolder().verb.addAll(value);
        //print(verb);
      });
    });
    super.initState();

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Choose Phrasal Verb")),
      body: ListView.builder(
        itemCount: DataHolder().verb.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Icon(Icons.language_rounded, color: Colors.cyan,),
                title: Text(DataHolder().verb[index].verb.toString().toUpperCase(),
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,),
                ),
              onTap: (){
                Navigator.of(context).popAndPushNamed('/third_view');
                DataHolder().indexVerb = DataHolder().verb[index];
              },
            );
          }

          ),
    );
  }
}