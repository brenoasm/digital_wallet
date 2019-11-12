import 'package:digital_wallet/constants.dart';
import 'package:digital_wallet/widgets/default_height_spacing.dart';
import 'package:digital_wallet/widgets/default_width_spacing.dart';
import 'package:flutter/material.dart';

class SectionWithTitle extends StatelessWidget {
  final String title;
  final Widget child;

  SectionWithTitle({@required this.title, this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            DefaultWidthSpacing(),
            Expanded(
              child: Text(
                this.title,
                style: kSectionTitle,
              ),
            ),
          ],
        ),
        DefaultHeightSpacing(),
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: child,
        ),
      ],
    );
  }
}
