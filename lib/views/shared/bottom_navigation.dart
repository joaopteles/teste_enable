import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarCarrossel extends StatelessWidget {
  final int quantidade;
  final int paginaAtual;

  BottomBarCarrossel(
      {Key key, @required this.quantidade, @required this.paginaAtual})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    for (var i = 0; i < quantidade; i++) {
      children.add(_iconeCarrossel(i));
    }
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }

  Widget _iconeCarrossel(int index) {
    return Container(
      padding: EdgeInsets.only(left: 4),
      child: paginaAtual == index
          ? Icon(
              Icons.brightness_1,
              color: Colors.white,
              size: 14,
            )
          : Icon(
              Icons.brightness_1,
              color: Color(0xFF004990),
              size: 14,
            ),
    );
  }
}
