import 'package:enable_ventures_teste/stores/aplicacao_store.dart';
import 'package:enable_ventures_teste/views/home/sugestoes/cardSugestao.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SugestoesCards extends StatefulWidget {
  @override
  _SugestoesCardsState createState() => _SugestoesCardsState();
}

class _SugestoesCardsState extends State<SugestoesCards> {
  AplicacaoStore _aplicacaoStore = GetIt.I<AplicacaoStore>();
  PageController _pageController;

  @override
  void initState() {
    _aplicacaoStore.iniciarPageController(
        PageController(viewportFraction: 1, initialPage: 0));

    _pageController = _aplicacaoStore.pageController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var kCardSugestao = List<CardSugestao>.generate(
        _aplicacaoStore.sugestoesModel.length,
        (i) => CardSugestao(
              sugestaoModel: _aplicacaoStore.sugestoesModel[i],
            ));
    return PageView(
      controller: _pageController,
      onPageChanged: (int page) {
        _aplicacaoStore.setCardAtual(page);
      },
      children: kCardSugestao,
    );
  }
}
