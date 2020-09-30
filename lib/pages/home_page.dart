import 'package:flutter/material.dart';
import 'package:mi_gym/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            title: 'HOMPAGE',
          ),
          _carousel(),
          SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: _list(),
          ),
        ],
      ),
    );
  }

  Widget _list() {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Icon(Icons.receipt),
                    SizedBox(
                      width: 32.0,
                    ),
                    Text(
                      'Peso',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '75 Kg',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black38,
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Icon(Icons.receipt),
                    SizedBox(
                      width: 32.0,
                    ),
                    Text(
                      'Peso',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '184 cm',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black38,
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Icon(Icons.receipt),
                    SizedBox(
                      width: 32.0,
                    ),
                    Text(
                      'Rutina',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Hipertrofia',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black38,
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Icon(Icons.receipt),
                    SizedBox(
                      width: 32.0,
                    ),
                    Text(
                      'Días',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '5',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _carousel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      height: 200,
      child: Row(
        children: [
          Expanded(
            child: _cardCarousel(Color(0xff5349fc)),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              child: _cardCarousel(Color(0xffffb332)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardCarousel(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 8,
            offset: Offset(0, 5),
          )
        ],
      ),
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              '5',
              style: TextStyle(fontSize: 34, color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'RUTINA',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[300],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Hipertrofia',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
