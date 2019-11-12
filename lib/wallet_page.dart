import 'package:digital_wallet/widgets/custom_text_field.dart';
import 'package:digital_wallet/widgets/default_height_spacing.dart';
import 'package:digital_wallet/widgets/default_width_spacing.dart';
import 'package:digital_wallet/widgets/section_with_title.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          'Minha Carteira',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          // ClipOval(
          //   child: Image.network(
          //     'https://via.placeholder.com/150',
          //     width: 30,
          //     fit: BoxFit.fill,
          //   ),
          // ),
          // Container(
          //   child: CircleAvatar(
          //     radius: 25,
          //     backgroundImage: NetworkImage(
          //       'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
          //       scale: 0.5,
          //     ),
          //   ),
          // ),
          Container(
            width: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          DefaultWidthSpacing(),
        ],
      ),
      body: _renderMainContent(),
    );
  }

  Widget _renderMainContent() {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                CustomTextField(
                  label: 'Disponível para investir',
                  value: '134,69',
                  prefix: Text(
                    'R\$',
                    style: kRealPrefix,
                  ),
                ),
                DefaultHeightSpacing(),
                CustomTextField(
                  label: 'A liquidar',
                  value: '555,55',
                  prefix: Text(
                    'R\$',
                    style: kRealPrefix,
                  ),
                ),
                DefaultHeightSpacing(),
                DefaultHeightSpacing(),
                SectionWithTitle(
                  title: 'CARTEIRA DE INVESTIMENTOS',
                  child: Text('Temporario'),
                ),
                DefaultHeightSpacing(),
                DefaultHeightSpacing(),
                SectionWithTitle(
                  title: 'POSIÇÃO CONSOLIDADA',
                  child: Text('Temporario'),
                ),
                DefaultHeightSpacing(),
                DefaultHeightSpacing(),
                SectionWithTitle(
                  title: 'EVOLUÇÃO PATRIMONIAL',
                  child: Text('Temporario'),
                ),
                DefaultHeightSpacing(),
                DefaultHeightSpacing(),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onHorizontalDragStart: (DragStartDetails dragStartDetails) {
              print('TOPPER=== $dragStartDetails');
            },
            child: Container(
              height: 38,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey[500],
                    spreadRadius: 0,
                    blurRadius: 10,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    15,
                  ),
                  topRight: Radius.circular(
                    15,
                  ),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
