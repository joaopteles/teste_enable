import 'package:enable_ventures_teste/stores/aplicacao_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Cabecalho extends StatelessWidget {
  final AplicacaoStore _aplicacaoStore = GetIt.I<AplicacaoStore>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: width * 0.06,
                backgroundImage: AssetImage(
                    _aplicacaoStore.autenticacaoModel.photo.substring(1)),
              ),
              radius: width * 0.07,
              foregroundColor: Colors.black,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: width * 0.05,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Olá, ',
                  ),
                  TextSpan(
                    text: _aplicacaoStore.autenticacaoModel.name,
                    style: TextStyle(fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: width * 0.12,
            ),
          ),
        ],
      ),
    );
  }
}
