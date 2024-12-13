import 'package:myapp/domain/models/pessoa/pessoa.dart';
import 'dart:io';

void main() {
  print('Digite seu nome:');
  String nome = stdin.readLineSync()!;

  print('Digite seu peso (em kg):');
  double peso = double.parse(stdin.readLineSync()!);

  print('Digite sua altura (em metros):');
  double altura = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);

  pessoa.calcularIMC();
  pessoa.situacaoIMC();

  print('Olá, ${pessoa.nome}!');
  print('Seu IMC é: ${pessoa.situacaoIMCString}');
}
