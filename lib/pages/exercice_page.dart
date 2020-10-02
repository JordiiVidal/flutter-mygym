import 'package:flutter/material.dart';
import 'package:mi_gym/models/exercice.dart';
import 'package:mi_gym/widgets/flex_button.dart';

class ExercicePage extends StatefulWidget {
  @override
  _ExercicePageState createState() => _ExercicePageState();
}

class _ExercicePageState extends State<ExercicePage> {
  @override
  Widget build(BuildContext context) {
    final Exercice exercice = ModalRoute.of(context).settings.arguments;
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return Scaffold(
      backgroundColor: Color(0xfffEEEEEE),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Stack(
                    children: [
                      Center(child: Image.asset(exercice.urlImage)),
                      Positioned(
                        bottom: 0,
                        left: 18.0,
                        child: Row(
                          children: [
                            FlexButton(
                              number: exercice.repetitions,
                              text: 'Reps',
                              color: Color(0xff5349fc),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            FlexButton(
                              number: exercice.series,
                              text: 'Series',
                              color: Color(0xfffff6347),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 18,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: radius,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 10,
                          offset: Offset(10, 0),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Hombro'),
                                    Text('5 min'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  exercice.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '${exercice.weight} kg',
                                style: TextStyle(fontSize: 34.0),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 18,
                            right: 18,
                            bottom: 22,
                          ),
                          padding: EdgeInsets.all(
                            18.0,
                          ),
                          child: Center(
                            child: Text(
                              'Empezar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 21),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfffF6347),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 30,
                color: Colors.black87,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
