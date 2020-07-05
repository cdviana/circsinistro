import 'package:flutter/material.dart';
import 'package:portsgame/ports/2in1outport.dart';

class OrGate extends StatefulWidget {
  final double width;
  final double height;

  OrGate(this.width, this.height);

  @override
  _OrGateState createState() => _OrGateState();
}

class _OrGateState extends State<OrGate> {
  @override
  Widget build(BuildContext context) {
    return TwoInOneOut(
        widget.width, widget.height, 0.17, 'images/ports/or.png');
  }
}
