import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomDragTarget extends StatefulWidget {
  final double cellSize;
  final double index;
  final Widget child;
  final Function onGetData;

  CustomDragTarget(this.cellSize, this.index, this.child, this.onGetData);

  @override
  _CustomDragTargetState createState() => _CustomDragTargetState();
}

class _CustomDragTargetState extends State<CustomDragTarget> {
  bool isSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return DragTarget<Widget>(
      builder: (context, List<Widget> candidateData, rejectedData) {
        return (widget.child != null)
            ? widget.child
            : (candidateData.length > 0)
                ? DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Container(
                        height: widget.cellSize * 0.9,
                        width: widget.cellSize * 0.9,
                      ),
                    ),
                  )
                : Container(
                    height: widget.cellSize * 0.9,
                    width: widget.cellSize * 0.9,
                  );
      },
      onWillAccept: (data) {
        setState(() {});
        return true;
      },
      onAccept: (data) {
        setState(() {
          widget.onGetData(data);
          print('\n\ncalled');

          isSuccessful = true;
        });
      },
    );
  }
}
