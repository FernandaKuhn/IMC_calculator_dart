import 'dart:convert';
import 'dart:io';

import 'package:meu_app_dart/classes/pessoa.dart';

void main(List<String> arguments) {
  print("Essa é a Calculadora de IMC! :)");

  String lerTexto(String mensagem) {
    print(mensagem);
    var entrada = stdin.readLineSync(encoding: utf8);
    return entrada != null && entrada.isNotEmpty ? entrada : "Desconhecido";
  }

  double lerNumero(String mensagem) {
    while (true) {
      try {
        print(mensagem);
        var entrada = stdin.readLineSync(encoding: utf8);
        return double.parse(entrada ?? "0");
      } catch (e) {
        print("Inválida. Tente Novamente.");
      }
    }
  }

  var nome = lerTexto("Informe seu nome:");
  var peso = lerNumero("Informe seu peso em kg:");
  var altura = lerNumero("Informe sua altura em metros (ex: 1.50):");

  var pessoa = Pessoa(nome: nome, peso: peso, altura: altura);

  var imc = pessoa.calcularIMC();
  print("\n${pessoa}");
  print("Seu IMC é: ${imc.toStringAsFixed(2)}");

  if (imc < 16){
    print("Classificação: Magreza grave");
  } 
  else if (imc >= 16 && imc < 17 ) {
    print("Classificação: Magreza moderada");
  } else if (imc >= 17 && imc < 18.5) {
    print("Classificação: Magreza leve");
  } else if (imc >= 18.5 && imc < 25) {
    print("Classificação: Saudável");
  } else if (imc >= 25 && imc < 30) {
    print("Classificação: Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("Classificação: Obesidade Grau 1");
  } else if (imc >= 35 && imc < 40) {
    print("Classificação: Obesidade Grau 2 (severa)");
  } else {
    print("Classificação: Obesidade Grau 3 (mórbida)");
  }
}