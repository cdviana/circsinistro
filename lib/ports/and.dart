import 'package:flutter/material.dart';

import '2in1outport.dart';

class AndGate extends StatefulWidget {
  final double width;
  final double height;

  AndGate(this.width, this.height);

  @override
  _OrGateState createState() => _OrGateState();
}

class _OrGateState extends State<AndGate> {
  @override
  Widget build(BuildContext context) {
    return TwoInOneOut(
        widget.width, widget.height, 0.17, 'images/ports/and.png');
  }
}
