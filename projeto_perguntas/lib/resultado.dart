import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens!';
    } else if (pontuacao < 12) {
      return 'Voçê é bom!';
    } else if (pontuacao < 16) {
      return 'Impresionante!';
    } else {
      return 'Nível jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 48,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 2
                ..color = Colors.blue[700]!,
            ),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          textColor: Colors.black,
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
