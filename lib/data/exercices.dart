import 'package:mi_gym/models/exercice.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

List<Exercice> exercices = [
  Exercice(
    id: uuid.v4(),
    muscle: MuscleExercice.Shoulder,
    series: 4,
    repetitions: 10,
    name: 'Press hombro sentado con barra',
    weight: 20,
    urlImage: 'assets/images/press_militar.gif',
  ),
  Exercice(
    id: uuid.v4(),
    muscle: MuscleExercice.Shoulder,
    series: 4,
    repetitions: 10,
    name: 'Elevaciones laterales con mancuernas',
    weight: 20,
    urlImage: 'assets/images/elevacion_lateral.gif',
  ),
  Exercice(
    id: uuid.v4(),
    muscle: MuscleExercice.Shoulder,
    series: 4,
    repetitions: 10,
    name: 'Press sentado con mancuernas',
    weight: 20,
    urlImage: 'assets/images/press_arnold.gif',
  ),
  Exercice(
    id: uuid.v4(),
    muscle: MuscleExercice.Shoulder,
    series: 4,
    repetitions: 10,
    name: 'Pájaros (posterior mancuernas)',
    weight: 20,
    urlImage: 'assets/images/elevaciones_posteriores.jpg',
  ),
  Exercice(
    id: uuid.v4(),
    muscle: MuscleExercice.Shoulder,
    series: 4,
    repetitions: 10,
    name: 'Encogimientos de hombro con mancuernas (trapecios)',
    weight: 20,
    urlImage: 'assets/images/encogimiento_hombros.gif',
  ),
];

void changeWeight(String id, double weight) {
  exercices.forEach((element) {
    if (element.id == id) {
      element.weight = weight;
    }
  });
}
