import 'package:digital_wallet/dataModels/ConsolidatedPosition.dart';
import 'package:flutter/material.dart';

class ConsolidatedPositionTile extends StatefulWidget {
  final ConsolidatedPosition consolidatedPosition;

  ConsolidatedPositionTile({@required this.consolidatedPosition});

  @override
  _ConsolidatedPositionState createState() => _ConsolidatedPositionState();
}

class _ConsolidatedPositionState extends State<ConsolidatedPositionTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 4,
            color: Colors.blue,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Topper'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Qtde 5 ativos'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Saldo bruto'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Center(
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
