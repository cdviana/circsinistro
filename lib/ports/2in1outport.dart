import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwoInOneOut extends StatefulWidget {
  final double width;
  final double height;
  final double baseProportion;
  final String imagePath;

  TwoInOneOut(this.width, this.height, this.baseProportion,this.imagePath);

  @override
  _TwoInOneOutState createState() => _TwoInOneOutState();
}

class _TwoInOneOutState extends State<TwoInOneOut> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width, //200
      height: widget.height, //240
      child: Column(
        children: <Widget>[
          Container(
            width: 1.5 * widget.width / 10,
            height: 1.5 * widget.height / 12,
            child: FittedBox(
              child: IconButton(
                icon: Icon(FontAwesomeIcons.chevronCircleUp),
                highlightColor: Colors.black,
                onPressed: () {
                  print('apertou');
                },
              ),
            ),
          ),
          Image.asset(
            widget.imagePath,
            fit: BoxFit.fill,
            height: 0.75 * 10 * widget.height / 12,
            width: 0.7 * widget.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 1.5 * widget.width / 10,
                height: 1.5 * widget.height / 12,
                child: FittedBox(
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.chevronCircleUp),
                    highlightColor: Colors.black,
                    onPressed: () {
                      print('apertou');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: widget.width * widget.baseProportion,
              ),
              Container(
                width: 1.5 * widget.width / 10,
                height: 1.5 * widget.height / 12,
                child: FittedBox(
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.chevronCircleUp),
                    highlightColor: Colors.black,
                    onPressed: () {
                      print('apertou');
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
