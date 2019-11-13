import 'package:flutter/material.dart';

class ConsolidatedPosition {
  Color color;
  String title;
  String grossBalance;
  List<Widget> items;

  int get itemsQuantity => items?.length ?? 0;

  ConsolidatedPosition({
    @required this.color,
    @required this.title,
    @required this.grossBalance,
    this.items,
  });
}
