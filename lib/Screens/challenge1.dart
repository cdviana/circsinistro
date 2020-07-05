import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portsgame/ports/2in1outport.dart';
import 'package:portsgame/ports/and.dart';
import 'package:portsgame/ports/or.dart';
import 'package:portsgame/widgets/customDargTarget.dart';
import 'package:portsgame/widgets/dragtarget_matrix.dart';

class Challenge1 extends StatefulWidget {
  static const String path = '/';

  @override
  _Challenge1State createState() => _Challenge1State();
}

class _Challenge1State extends State<Challenge1> {
  List<Widget> dragTargetSpots = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
  ];

  @override
  Widget build(BuildContext context) {
    double ref = MediaQuery.of(context).size.shortestSide;
    double cardSide;
    int numberOfRows = 1;

    cardSide = (ref / 200).ceilToDouble();
    cardSide = ref / cardSide;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fase 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Portas disponíveis:',
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Theme.of(context).accentColor),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Draggable<Widget>(
                    data: AndGate(cardSide, cardSide),
                    child: Image.asset(
                      'images/ports/and.png',
                      width: cardSide / 2,
                      height: cardSide / 2,
                    ),
                    feedback: Image.asset(
                      'images/ports/and.png',
                      width: cardSide,
                      height: cardSide,
                    ),
                    childWhenDragging: Image.asset(
                      'images/ports/and.png',
                      width: cardSide / 2,
                      height: cardSide / 2,
                    ),
                  ),
                  Draggable<Widget>(
                    data: OrGate(cardSide, cardSide),
                    child: Image.asset(
                      'images/ports/or.png',
                      width: cardSide / 2,
                      height: cardSide / 2,
                    ),
                    feedback: Image.asset(
                      'images/ports/or.png',
                      width: cardSide,
                      height: cardSide,
                    ),
                    childWhenDragging: Image.asset(
                      'images/ports/or.png',
                      width: cardSide / 2,
                      height: cardSide / 2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
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
                FittedBox(
                  child: Text('Output'),
                )
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context)
                            .textTheme
                            .body1
                            .color
                            .withAlpha(100))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 0, dragTargetSpots[0], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[0] = a;
                              });
                            }
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 1, dragTargetSpots[1], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[1] = a;
                              });
                            }
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 2, dragTargetSpots[2], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[2] = a;
                              });
                            }
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 3, dragTargetSpots[3], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[3] = a;
                              });
                            }
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 4, dragTargetSpots[4], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[4] = a;
                              });
                            }
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 5, dragTargetSpots[5], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[5] = a;
                              });
                            }
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 6, dragTargetSpots[6], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[6] = a;
                              });
                            }
                          }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDragTarget(
                              cardSide, 7, dragTargetSpots[7], (a) {
                            if (mounted) {
                              setState(() {
                                dragTargetSpots[7] = a;
                              });
                            }
                          }),
                        ),
//                      CustomDragTarget(cardSide, 8, dragTargetSpots[8], (a) {
//                        if (mounted) {
//                          setState(() {
//                            dragTargetSpots[8] = a;
//                          });
//                        }
//                      }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FittedBox(
                  child: Text('Input'),
                ),
                Container(
                  width: 30,
                  height: 30,
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
      ),
    );
  }
}
