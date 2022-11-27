class Verb {
  final String? verb;
  final String? definition;

  Verb({this.verb, this.definition});

  Verb.fromJson(Map<String, dynamic> json)
      : verb = json['verb'] ,
        definition = json['definition'] ;

  Map<String, dynamic> toJson() =>
      {
        'name': verb,
        'email': definition,
      };

  @override
  String toString() {
    return 'Verb{name: $verb, definition: $definition}';
  }
}


