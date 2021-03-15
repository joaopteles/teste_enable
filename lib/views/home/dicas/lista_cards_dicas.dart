import 'package:enable_ventures_teste/stores/aplicacao_store.dart';
import 'package:enable_ventures_teste/views/home/dicas/dica_recrutadores.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class TipCards extends StatefulWidget {
  @override
  _TipCardsState createState() => _TipCardsState();
}

class _TipCardsState extends State<TipCards> {
  AplicacaoStore _aplicacaoStore = GetIt.I<AplicacaoStore>();
  PageController _pageController;

  @override
  void initState() {
    _aplicacaoStore.iniciarPageController(
        PageController(viewportFraction: 1, initialPage: 0));
    _pageController = _aplicacaoStore.pageControllerTip;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var kCardTip = List<DicasRecrutadores>.generate(
        _aplicacaoStore.tipsModel.length,
        (i) => DicasRecrutadores(
              tipsModel: _aplicacaoStore.tipsModel[i],
            ));
    return PageView(
      controller: _pageController,
      onPageChanged: (int page) {
        _aplicacaoStore.setTipAtual(page);
      },
      children: kCardTip,
    );
  }
}
