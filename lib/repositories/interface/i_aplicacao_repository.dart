import 'package:enable_ventures_teste/models/autenticacao_model.dart';
import 'package:enable_ventures_teste/models/get_keys_model.dart';
import 'package:enable_ventures_teste/models/sugestao_model.dart';
import 'package:enable_ventures_teste/models/survey_model.dart';
import 'package:enable_ventures_teste/models/tip_model.dart';

abstract class IAplicacaoRepository {
  Future<GetKeysModel> obterChaves();
  Future<AutenticacaoModel> obterUsuario(String userId, String apiKey);
  Future<List<SugestaoModel>> obterSugestoesModel(
      String userToken, String apiKey);
  Future<List<TipModel>> obterTipsModel(String apiKey);
  Future<SurveyModel> interacaoDica(
      String tipId, String action, String userToken, String apiKey);
}
