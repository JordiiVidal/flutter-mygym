import 'dart:convert';

Exercice exerciceFromJson(String str) => Exercice.fromJson(json.decode(str));

String exerciceToJson(Exercice data) => json.encode(data.toJson());

enum MuscleExercice {
  Biceps,
  Triceps,
  Back,
  Pectoral,
  Legs,
  Shoulder,
  FullBody
}

class Exercice {
  Exercice({
    this.id,
    this.name,
    this.muscle,
    this.repetitions,
    this.series,
    this.duration,
    this.weight,
    this.urlImage,
  });

  String id;
  String name;
  MuscleExercice muscle;
  int repetitions;
  int series;
  double duration;
  double weight;
  String urlImage;

  factory Exercice.fromJson(Map<String, dynamic> json) => Exercice(
        id: json["id"],
        name: json["name"],
        muscle: json["muscle"],
        repetitions: json["repetitions"],
        series: json["series"],
        weight: json["weight"].toDouble(),
        urlImage : json["urlImage"],
        duration : json["duration"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "muscle": muscle,
        "repetitions": repetitions,
        "series": series,
        "weight": weight,
        "urlImage" : urlImage,
        "duration" : duration,
      };
}
