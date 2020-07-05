import 'package:flutter/material.dart';
import 'package:portsgame/widgets/customDargTarget.dart';

class DragTargetMatrix extends StatefulWidget {
  final int rows;
  final int columns;
  final double cellSize;

  DragTargetMatrix(this.rows, this.columns, this.cellSize);

  @override
  _DragTargetMatrixState createState() => _DragTargetMatrixState();
}

class _DragTargetMatrixState extends State<DragTargetMatrix> {
  @override
  Widget build(BuildContext context) {
    List<Widget> columnContent = [];
    List<Widget> rowContent = [];
    int counter = 0;
    for (var i = 0; i < widget.columns; i++) {
      for (var j = 0; j < widget.rows; i++) {
//          rowContent.add(CustomDragTarget(widget.cellSize,counter,childList[counter],(a)=>refreshList(counter,a)));
      }
      columnContent.add(Row(children: rowContent));
      rowContent = [];
    }

    return Column(
      children: columnContent,
    );
  }
}
