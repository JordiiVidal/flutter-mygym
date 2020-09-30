import 'dart:convert';
import 'package:mi_gym/models/exercice.dart';

Routine routineFromJson(String str) => Routine.fromJson(json.decode(str));

String routineToJson(Routine data) => json.encode(data.toJson());

class Routine {
  Routine({
    this.id,
    this.name,
    this.exercices,
  });

  String id;
  String name;
  Map<String, List<Exercice>> exercices;

  factory Routine.fromJson(Map<String, dynamic> json) => Routine(
        id: json["id"],
        name: json["name"],
        exercices: json["exercices"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "exercices": exercices,
      };
}
