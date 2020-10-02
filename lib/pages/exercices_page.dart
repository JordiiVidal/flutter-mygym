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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            (index == 0) ? 16.0 : 8, 8, 8, 8),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icons/leg.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: exercices.length,
              itemBuilder: (context, i) => _cardExercice(exercices[i], context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardExercice(Exercice exercice, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/exercice', arguments: exercice);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 8,
              offset: Offset(0, 5),
            )
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
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
      ),
    );
  }
}
