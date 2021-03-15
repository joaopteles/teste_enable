import 'package:enable_ventures_teste/models/tip_model.dart';
import 'package:enable_ventures_teste/stores/aplicacao_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:get_it/get_it.dart';

class DicasRecrutadores extends StatefulWidget {
  final TipModel tipsModel;

  const DicasRecrutadores({Key key, this.tipsModel}) : super(key: key);
  @override
  _DicasRecrutadoresState createState() => _DicasRecrutadoresState();
}

class _DicasRecrutadoresState extends State<DicasRecrutadores> {
  AplicacaoStore _aplicacaoStore = GetIt.I<AplicacaoStore>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                widget.tipsModel.description,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF76838A),
                  fontSize: width * 0.0389,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: widget.tipsModel.button.show
                        ? OutlineButton(
                            child: Text(
                              widget.tipsModel.button.label.toUpperCase(),
                              style: TextStyle(
                                color: Color(0xFF1250C4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFF1250C4),
                            ),
                            color: Color(0xFF1250C4),
                            onPressed: () async {
                              await FlutterWebBrowser.openWebPage(
                                url: (widget.tipsModel.button.url),
                                androidToolbarColor: Colors.blue,
                              );
                            })
                        : Container(
                            width: width * 0.4,
                          ),
                  ),
                  Text(
                    'Achou útil?',
                    style: TextStyle(
                      color: Color(0xFF76838A),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    color: Color(0xFF76838A),
                    onPressed: () async {
                      await _aplicacaoStore.interacaoUtil(
                          widget.tipsModel.id, 'like');
                      _showToast(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_down),
                    color: Color(0xFF76838A),
                    onPressed: () async {
                      await _aplicacaoStore.interacaoUtil(
                          widget.tipsModel.id, 'dislike');
                      _showToast(context);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(_aplicacaoStore.surveyModel.message),
        action: SnackBarAction(
            label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
