import 'package:enable_ventures_teste/stores/aplicacao_store.dart';
import 'package:enable_ventures_teste/views/home/home.dart';
import 'package:enable_ventures_teste/views/shared/circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class TelaInicialTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String kuser1 = 'ee09bd39-4ca2-47ac-9c5e-9c57ba5a26dc';
    String kuser2 = 'cc3431c3-d9c9-48e2-8a1f-c3c0260f0712';

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Center(
            child: Text(
              'Selecione um usuário para iniciar o App:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: RaisedButton(
                    child: Text('USER 1'),
                    onPressed: () async {
                      EvProgressIndicator.show(context: context);
                      await _iniciarApp(kuser1);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                      EvProgressIndicator.suppress();
                    },
                  ),
                ),
                Expanded(flex: 2, child: Container()),
                Expanded(
                  flex: 8,
                  child: RaisedButton(
                    child: Text('USER 2'),
                    onPressed: () async {
                      EvProgressIndicator.show(context: context);
                      await _iniciarApp(kuser2);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                      EvProgressIndicator.suppress();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _iniciarApp(String user) async {
    AplicacaoStore _aplicacaoStore = GetIt.I<AplicacaoStore>();

    await _aplicacaoStore.obterChaves();
    await _aplicacaoStore.obterUsuario(user);
    await _aplicacaoStore.obterListaSugestoes();
    await _aplicacaoStore.obterListaTips();
  }
}
