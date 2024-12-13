import 'package:myapp/domain/models/pessoa/pessoa.dart';

class PessoaHomeViewModel {
  final Pessoa pessoa;

  PessoaHomeViewModel({required this.pessoa});

  String getNome() {
    return pessoa.nome;
  }

  double getPeso() {
    return pessoa.peso;
  }

  double getAltura() {
    return pessoa.altura;
  }

  double calculaIMC() {
    return pessoa.calcularIMC();
  }
}
