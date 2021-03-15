import 'package:enable_ventures_teste/models/autenticacao_model.dart';
import 'package:enable_ventures_teste/models/get_keys_model.dart';
import 'package:enable_ventures_teste/models/sugestao_model.dart';
import 'package:enable_ventures_teste/models/survey_model.dart';
import 'package:enable_ventures_teste/models/tip_model.dart';
import 'package:enable_ventures_teste/repositories/interface/i_aplicacao_repository.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'aplicacao_store.g.dart';

class AplicacaoStore = _AplicacaoStoreBase with _$AplicacaoStore;

abstract class _AplicacaoStoreBase with Store {
  final IAplicacaoRepository _aplicacaoRepository;

  _AplicacaoStoreBase(this._aplicacaoRepository);

  @observable
  GetKeysModel _getKeysModel;

  @observable
  AutenticacaoModel autenticacaoModel;

  @observable
  List<SugestaoModel> sugestoesModel;

  @observable
  List<TipModel> tipsModel;

  @observable
  SurveyModel surveyModel;

  @observable
  PageController pageController;

  @observable
  PageController pageControllerTip;

  @observable
  int cardAtual = 0;

  @observable
  int cardTipAtual = 0;

  @action
  void iniciarPageController(PageController pageController) {
    this.pageController = pageController;
  }

  @action
  void iniciarPageControllerTip(PageController pageControllertip) {
    this.pageControllerTip = pageControllertip;
  }

  @action
  void setCardAtual(int cardAtual) => this.cardAtual = cardAtual;

  @action
  void setTipAtual(int cardTipAtual) => this.cardTipAtual = cardTipAtual;

  @action
  void setKeysModel(GetKeysModel getKeysModel) =>
      this._getKeysModel = getKeysModel;

  @action
  void setAutenticacaoModel(AutenticacaoModel autenticacaoModel) =>
      this.autenticacaoModel = autenticacaoModel;

  @action
  void setSugestaoModel(List<SugestaoModel> sugestaoModel) =>
      this.sugestoesModel = sugestaoModel;

  @action
  void setSurveyModel(SurveyModel surveyModel) =>
      this.surveyModel = surveyModel;

  @action
  void setTipsModel(List<TipModel> tipModel) => this.tipsModel = tipModel;

  void alterarPaginaCadastro(int indexNovaPagina) {
    pageController.animateToPage(
      indexNovaPagina,
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  void limparPropriedades() {
    setCardAtual(0);
    setTipAtual(0);
    setKeysModel(null);
    setAutenticacaoModel(null);
    setSugestaoModel(null);
    setSurveyModel(null);
    setTipsModel(null);
  }

  Future<void> obterChaves() async {
    setKeysModel(await _aplicacaoRepository.obterChaves());
  }

  Future<void> obterUsuario(String user) async {
    setAutenticacaoModel(
        await _aplicacaoRepository.obterUsuario(user, _getKeysModel.auth));
  }

  Future<void> obterListaSugestoes() async {
    setSugestaoModel(await _aplicacaoRepository.obterSugestoesModel(
        autenticacaoModel.token, _getKeysModel.suggestion));
  }

  Future<void> obterListaTips() async {
    setTipsModel(await _aplicacaoRepository.obterTipsModel(_getKeysModel.tips));
  }

  Future<void> interacaoUtil(String tipId, String action) async {
    setSurveyModel(await _aplicacaoRepository.interacaoDica(
        tipId, action, autenticacaoModel.token, _getKeysModel.survey));
  }
}
