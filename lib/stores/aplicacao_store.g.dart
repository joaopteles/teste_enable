// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aplicacao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AplicacaoStore on _AplicacaoStoreBase, Store {
  final _$_getKeysModelAtom = Atom(name: '_AplicacaoStoreBase._getKeysModel');

  @override
  GetKeysModel get _getKeysModel {
    _$_getKeysModelAtom.reportRead();
    return super._getKeysModel;
  }

  @override
  set _getKeysModel(GetKeysModel value) {
    _$_getKeysModelAtom.reportWrite(value, super._getKeysModel, () {
      super._getKeysModel = value;
    });
  }

  final _$autenticacaoModelAtom =
      Atom(name: '_AplicacaoStoreBase.autenticacaoModel');

  @override
  AutenticacaoModel get autenticacaoModel {
    _$autenticacaoModelAtom.reportRead();
    return super.autenticacaoModel;
  }

  @override
  set autenticacaoModel(AutenticacaoModel value) {
    _$autenticacaoModelAtom.reportWrite(value, super.autenticacaoModel, () {
      super.autenticacaoModel = value;
    });
  }

  final _$sugestoesModelAtom = Atom(name: '_AplicacaoStoreBase.sugestoesModel');

  @override
  List<SugestaoModel> get sugestoesModel {
    _$sugestoesModelAtom.reportRead();
    return super.sugestoesModel;
  }

  @override
  set sugestoesModel(List<SugestaoModel> value) {
    _$sugestoesModelAtom.reportWrite(value, super.sugestoesModel, () {
      super.sugestoesModel = value;
    });
  }

  final _$tipsModelAtom = Atom(name: '_AplicacaoStoreBase.tipsModel');

  @override
  List<TipModel> get tipsModel {
    _$tipsModelAtom.reportRead();
    return super.tipsModel;
  }

  @override
  set tipsModel(List<TipModel> value) {
    _$tipsModelAtom.reportWrite(value, super.tipsModel, () {
      super.tipsModel = value;
    });
  }

  final _$surveyModelAtom = Atom(name: '_AplicacaoStoreBase.surveyModel');

  @override
  SurveyModel get surveyModel {
    _$surveyModelAtom.reportRead();
    return super.surveyModel;
  }

  @override
  set surveyModel(SurveyModel value) {
    _$surveyModelAtom.reportWrite(value, super.surveyModel, () {
      super.surveyModel = value;
    });
  }

  final _$pageControllerAtom = Atom(name: '_AplicacaoStoreBase.pageController');

  @override
  PageController get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.reportWrite(value, super.pageController, () {
      super.pageController = value;
    });
  }

  final _$pageControllerTipAtom =
      Atom(name: '_AplicacaoStoreBase.pageControllerTip');

  @override
  PageController get pageControllerTip {
    _$pageControllerTipAtom.reportRead();
    return super.pageControllerTip;
  }

  @override
  set pageControllerTip(PageController value) {
    _$pageControllerTipAtom.reportWrite(value, super.pageControllerTip, () {
      super.pageControllerTip = value;
    });
  }

  final _$cardAtualAtom = Atom(name: '_AplicacaoStoreBase.cardAtual');

  @override
  int get cardAtual {
    _$cardAtualAtom.reportRead();
    return super.cardAtual;
  }

  @override
  set cardAtual(int value) {
    _$cardAtualAtom.reportWrite(value, super.cardAtual, () {
      super.cardAtual = value;
    });
  }

  final _$cardTipAtualAtom = Atom(name: '_AplicacaoStoreBase.cardTipAtual');

  @override
  int get cardTipAtual {
    _$cardTipAtualAtom.reportRead();
    return super.cardTipAtual;
  }

  @override
  set cardTipAtual(int value) {
    _$cardTipAtualAtom.reportWrite(value, super.cardTipAtual, () {
      super.cardTipAtual = value;
    });
  }

  final _$_AplicacaoStoreBaseActionController =
      ActionController(name: '_AplicacaoStoreBase');

  @override
  void iniciarPageController(PageController pageController) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.iniciarPageController');
    try {
      return super.iniciarPageController(pageController);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void iniciarPageControllerTip(PageController pageControllertip) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.iniciarPageControllerTip');
    try {
      return super.iniciarPageControllerTip(pageControllertip);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCardAtual(int cardAtual) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.setCardAtual');
    try {
      return super.setCardAtual(cardAtual);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipAtual(int cardTipAtual) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.setTipAtual');
    try {
      return super.setTipAtual(cardTipAtual);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setKeysModel(GetKeysModel getKeysModel) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.setKeysModel');
    try {
      return super.setKeysModel(getKeysModel);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAutenticacaoModel(AutenticacaoModel autenticacaoModel) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.setAutenticacaoModel');
    try {
      return super.setAutenticacaoModel(autenticacaoModel);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSugestaoModel(List<SugestaoModel> sugestaoModel) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.setSugestaoModel');
    try {
      return super.setSugestaoModel(sugestaoModel);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSurveyModel(SurveyModel surveyModel) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.setSurveyModel');
    try {
      return super.setSurveyModel(surveyModel);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipsModel(List<TipModel> tipModel) {
    final _$actionInfo = _$_AplicacaoStoreBaseActionController.startAction(
        name: '_AplicacaoStoreBase.setTipsModel');
    try {
      return super.setTipsModel(tipModel);
    } finally {
      _$_AplicacaoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
autenticacaoModel: ${autenticacaoModel},
sugestoesModel: ${sugestoesModel},
tipsModel: ${tipsModel},
surveyModel: ${surveyModel},
pageController: ${pageController},
pageControllerTip: ${pageControllerTip},
cardAtual: ${cardAtual},
cardTipAtual: ${cardTipAtual}
    ''';
  }
}
