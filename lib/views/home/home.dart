import 'package:enable_ventures_teste/stores/aplicacao_store.dart';
import 'package:enable_ventures_teste/views/home/cabecalho/cabecalho.dart';
import 'package:enable_ventures_teste/views/home/dicas/lista_cards_dicas.dart';
import 'package:enable_ventures_teste/views/home/sugestoes/sugestoes.dart';
import 'package:enable_ventures_teste/views/shared/bottom_navigation.dart';
import 'package:enable_ventures_teste/views/shared/titulo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AplicacaoStore _aplicacaoStore = GetIt.I<AplicacaoStore>();
  @override
  void initState() {
    _aplicacaoStore.obterChaves();
    super.initState();
  }

  @override
  void dispose() {
    _aplicacaoStore.limparPropriedades();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: width * 0.04,
            ),
            child: Cabecalho(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
              vertical: width * 0.02,
            ),
            child: Titulo('Sugestões de vagas para você'),
          ),
          Container(
            height: width * 0.57,
            child: SugestoesCards(),
          ),
          Observer(builder: (context) {
            return Container(
              child: BottomBarCarrossel(
                quantidade: _aplicacaoStore.sugestoesModel.length,
                paginaAtual: _aplicacaoStore.cardAtual,
              ),
            );
          }),
          SizedBox(
            height: width * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Titulo('#DicasDosRecrutadores'),
                Icon(
                  Icons.remove,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: width * 0.02),
            height: width * 0.5,
            child: TipCards(),
          ),
          Observer(builder: (context) {
            return Container(
              child: BottomBarCarrossel(
                quantidade: _aplicacaoStore.tipsModel.length,
                paginaAtual: _aplicacaoStore.cardTipAtual,
              ),
            );
          }),
        ],
      ),
    );
  }
}
