import 'package:enable_ventures_teste/models/sugestao_model.dart';
import 'package:flutter/material.dart';

class CardSugestao extends StatefulWidget {
  final SugestaoModel sugestaoModel;
  CardSugestao({
    Key key,
    this.sugestaoModel,
  }) : super(key: key);
  @override
  _CardSugestaoState createState() => _CardSugestaoState();
}

class _CardSugestaoState extends State<CardSugestao> {
  bool isVisible = true;
  bool clicado = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Text(
                      widget.sugestaoModel.jobAdTile,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Color(0xFF1250C4),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      widget.sugestaoModel.date.toLowerCase(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFffad23),
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    widget.sugestaoModel.company,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF76838A),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF76838A),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: widget.sugestaoModel.totalPositions
                                      .toString() +
                                  ' vagas - '),
                          TextSpan(text: widget.sugestaoModel.locations.first),
                          TextSpan(
                              text: widget.sugestaoModel.locations.length - 1 !=
                                      0
                                  ? ' + ' +
                                      (widget.sugestaoModel.locations.length -
                                              1)
                                          .toString() +
                                      ' cidades'
                                  : null),
                        ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    isVisible ? widget.sugestaoModel.salary.range : '--',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF76838A),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  isVisible
                      ? IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          color: Color(0xFF1250C4),
                          onPressed: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.remove),
                          color: Color(0xFF1250C4),
                          onPressed: () {
                            setState(() {
                              isVisible = true;
                            });
                          },
                        ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        color: Color(0xFF1250C4),
                        textColor: Colors.white,
                        child: Text(
                          clicado ? 'ENVIAR CURRICULO' : 'CV ENVIADO',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            clicado = false;
                          });
                          _showToast(context);
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('CV ENVIADO COM SUCESSO!'),
        action: SnackBarAction(
            label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
