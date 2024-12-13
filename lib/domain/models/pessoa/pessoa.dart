import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;
  String situacaoIMCString = '';
  late double imc;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double calcularIMC() {
    imc = peso / (altura * altura);
    return imc;
  }

  void situacaoIMC() {
    switch (imc) {
      case < 16:
        situacaoIMCString = 'Magreza grave';
        break;
      case < 17:
        situacaoIMCString = 'Magreza moderada';
        break;
      case < 18.5:
        situacaoIMCString = 'Magreza leve';
        break;
      case < 25:
        situacaoIMCString = 'Saudável';
        break;
      case < 30:
        situacaoIMCString = 'Sobrepeso';
        break;
      case < 35:
        situacaoIMCString = 'Obesidade Grau I';
        break;
      case < 40:
        situacaoIMCString = 'Obesidade Grau II (severa)';
        break;
      default:
        situacaoIMCString = 'Obesidade Grau III (mórbida)';
        break;
    }
  }
}
