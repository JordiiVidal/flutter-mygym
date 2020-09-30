import 'package:flutter/material.dart';
import 'package:mi_gym/data/exercices.dart';
import 'package:mi_gym/models/exercice.dart';
import 'package:mi_gym/widgets/custom_appbar.dart';

class ExercicesPage extends StatelessWidget {
  const ExercicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            title: 'EJERCICIOS',
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: exercices.length,
              itemBuilder: (context, i) => _cardExercice(exercices[i]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardExercice(Exercice exercice) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 8,
            offset: Offset(0, 5),
          )
        ],
      ),
      margin: EdgeInsets.all(18),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              exercice.name,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.fitness_center),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('${exercice.weight} kg'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.airline_seat_legroom_extra),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Hombro'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.swap_horiz),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('${exercice.series} Series'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.replay),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('${exercice.repetitions} reps'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
