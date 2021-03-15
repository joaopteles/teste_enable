import 'dart:convert';
import 'package:enable_ventures_teste/models/autenticacao_model.dart';
import 'package:enable_ventures_teste/models/sugestao_model.dart';
import 'package:enable_ventures_teste/models/survey_model.dart';
import 'package:enable_ventures_teste/models/tip_model.dart';
import 'package:http/http.dart';
import 'package:enable_ventures_teste/models/get_keys_model.dart';
import 'package:enable_ventures_teste/repositories/interface/i_aplicacao_repository.dart';

class AplicacaoRepository implements IAplicacaoRepository {
  final Client Function() _getClient;
  final String _api;

  AplicacaoRepository(this._getClient, this._api);

  @override
  Future<GetKeysModel> obterChaves() async {
    final httpClient = _getClient();
    try {
      final url = "$_api/keys";

      final respostaJson = await httpClient.get(url);

      var resposta =
          respostaJson.body.isNotEmpty ? jsonDecode(respostaJson.body) : null;

      return GetKeysModel.fromJson(resposta);
    } catch (e) {
      throw new Exception();
    } finally {
      httpClient.close();
    }
  }

  @override
  Future<SurveyModel> interacaoDica(
      String tipId, String action, String userToken, String apiKey) async {
    final httpClient = _getClient();
    try {
      final url = "$_api/survey/tips/$tipId/$action";

      var headers = {
        'Authorization': '$userToken',
        'x-api-key': '$apiKey',
      };

      final respostaJson = await httpClient.post(url, headers: headers);

      var resposta =
          respostaJson.body.isNotEmpty ? jsonDecode(respostaJson.body) : null;

      return SurveyModel.fromJson(resposta);
    } catch (e) {
      throw new Exception();
    } finally {
      httpClient.close();
    }
  }

  @override
  Future<List<SugestaoModel>> obterSugestoesModel(
      String userToken, String apiKey) async {
    final httpClient = _getClient();
    try {
      final url = "$_api/suggestion";

      var headers = {
        'Authorization': '$userToken',
        'x-api-key': '$apiKey',
      };

      final respostaJson = await httpClient.get(url, headers: headers);

      var resposta =
          respostaJson.body.isNotEmpty ? jsonDecode(respostaJson.body) : null;

      var list = List<SugestaoModel>();

      for (final sugestao in resposta)
        list.add(SugestaoModel.fromJson(sugestao));

      return list;
    } catch (e) {
      throw new Exception();
    } finally {
      httpClient.close();
    }
  }

  @override
  Future<List<TipModel>> obterTipsModel(String apiKey) async {
    final httpClient = _getClient();
    try {
      final url = "$_api/tips";

      var headers = {
        'x-api-key': '$apiKey',
      };

      final respostaJson = await httpClient.get(url, headers: headers);

      var resposta =
          respostaJson.body.isNotEmpty ? jsonDecode(respostaJson.body) : null;

      var list = List<TipModel>();

      for (final sugestao in resposta) list.add(TipModel.fromJson(sugestao));

      return list;
    } catch (e) {
      throw new Exception();
    } finally {
      httpClient.close();
    }
  }

  @override
  Future<AutenticacaoModel> obterUsuario(String userId, String apiKey) async {
    final httpClient = _getClient();
    try {
      final url = "$_api/auth/$userId";

      var headers = {
        'x-api-key': '$apiKey',
      };

      final respostaJson = await httpClient.get(url, headers: headers);

      var resposta =
          respostaJson.body.isNotEmpty ? jsonDecode(respostaJson.body) : null;

      return AutenticacaoModel.fromJson(resposta);
    } catch (e) {
      throw new Exception();
    } finally {
      httpClient.close();
    }
  }
}
