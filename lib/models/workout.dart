
import 'dart:convert';

Workout workoutFromJson(String str) => Workout.fromJson(json.decode(str));
String workoutToJson(Workout data) => json.encode(data.toJson());

class Workout {
    Workout({
        this.id,
        this.idUser,
        this.idExercice,
        this.idRoutine,
        this.series,
        this.reps,
        this.dateCreation,
    });

    String id;
    String idUser;
    String idExercice;
    String idRoutine;
    int series;
    int reps;
    String dateCreation;

    factory Workout.fromJson(Map<String, dynamic> json) => Workout(
        id: json["id"],
        idUser: json["id_user"],
        idExercice: json["id_exercice"],
        idRoutine: json["id_routine"],
        series: json["series"],
        reps: json["reps"],
        dateCreation: json["date_creation"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_user": idUser,
        "id_exercice": idExercice,
        "id_routine": idRoutine,
        "series": series,
        "reps": reps,
        "date_creation": dateCreation,
    };
}
