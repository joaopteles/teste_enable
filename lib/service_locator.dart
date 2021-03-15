import 'package:enable_ventures_teste/i_url_setup.dart';
import 'package:enable_ventures_teste/repositories/aplicacao_repository.dart';
import 'package:enable_ventures_teste/repositories/interface/i_aplicacao_repository.dart';
import 'package:enable_ventures_teste/stores/aplicacao_store.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

enum Environment { production, development, test }

void setupLocator({
  @required IUrlSetup urlSetup,
  Environment environment = Environment.production,
}) {
  var clientFactory = () {
    return Client();
  };

  GetIt.I.registerSingleton<IUrlSetup>(urlSetup);

  GetIt.I.registerSingleton<IAplicacaoRepository>(
      AplicacaoRepository(clientFactory, GetIt.I<IUrlSetup>().api));

  GetIt.I.registerSingleton<AplicacaoStore>(
      AplicacaoStore(GetIt.I<IAplicacaoRepository>()));
}
