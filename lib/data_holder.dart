import 'Verb.dart';

class DataHolder {


  Verb indexVerb = Verb();
  List<Verb> ulist =[];
  List<Verb> verb =[];


  static final DataHolder _dataHolder = DataHolder._internal();

  DataHolder._internal();

  factory DataHolder(){
    return _dataHolder;
  }


}