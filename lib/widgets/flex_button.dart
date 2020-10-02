import 'package:flutter/material.dart';

class FlexButton extends StatefulWidget {
  final int number;
  final String text;
  final Color color;

  const FlexButton({Key key, this.number, this.text, this.color})
      : super(key: key);

  @override
  _FlexButtonState createState() => _FlexButtonState();
}

class _FlexButtonState extends State<FlexButton> {
  final double height = 40;
  double _width = 40;
  bool _flexed = false;
  @override
  void initState() {
    super.initState();
  }

  void flexButton() {
    setState(() {
      if (_flexed) {
        _flexed = false;
        _width = 40.0;
      } else {
        _flexed = true;
        _width = 80.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: flexButton,
      child: Container(
        width: _width,
        height: height,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: (_flexed)
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.center,
          children: [
            Text(
              '${widget.number}',
              style: TextStyle(color: Colors.white),
            ),
            (_flexed)
                ? Text(
                    '${widget.text}',
                    style: TextStyle(color: Colors.white),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
