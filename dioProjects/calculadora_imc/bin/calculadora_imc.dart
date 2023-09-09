import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/enum/classificacao.dart';
import 'package:calculadora_imc/execption/height_error_exception.dart';
import 'package:calculadora_imc/execption/imc_error_exception.dart';
import 'package:calculadora_imc/execption/name_error_exception.dart';
import 'package:calculadora_imc/execption/weight_error_exception.dart';
import 'package:calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  double peso, altura;
  String nome;

//Coletando informações do usuário
  do {
    print('Informe o nome: ');
    nome = calculadora_imc.lerDados();
    try {
      if (nome.trim().isEmpty) {
        throw NameErrorException;
      }
    } on NameErrorException {
      print(NameErrorException);
    } catch (e) {
      print(e);
    }
  } while (nome.trim().isEmpty);

  do {
    print('Informe o peso: ');
    peso = double.parse(calculadora_imc.lerDados());
    try {
      if (peso <= 0 || peso.isNaN) {
        throw WeightErrorException();
      }
    } on WeightErrorException {
      print(WeightErrorException);
    } catch (e) {
      print(e);
    }
  } while (peso <= 0 || peso.isNaN);

  do {
    print('Informe a altura: ');
    altura = double.parse(calculadora_imc.lerDados());
    try {
      if (altura <= 0 || altura.isNaN) {
        throw HeightErrorException();
      }
    } on HeightErrorException {
      print(HeightErrorException);
    } catch (e) {
      print(e);
    }
  } while (altura <= 0 || altura.isNaN);

//Instanciando uma pessoa
  Pessoa pessoa = Pessoa(nome, peso, altura);
//Calculando o IMC e classificando a pessoa por IMC
  pessoa.classificaIMC();

//Retornando a resposta para o usuário
  switch (pessoa.getClassificacao()) {
    case classificacao.MAGREZA_GRAVE:
      print('Magreza grave');
      break;
    case classificacao.MAGREZA_MODERADA:
      print('Magreza moderada');
      break;
    case classificacao.MAGREZA_LEVE:
      print('Magreza leve');
      break;
    case classificacao.SAUDAVEL:
      print('Saudável');
      break;
    case classificacao.SOBREPESO:
      print('Sobrepeso');
      break;
    case classificacao.OBESIDADE_GRAU_I:
      print('Obesidade grau I');
      break;
    case classificacao.OBESIDADE_GRAU_II:
      print('Obesidade grau II');
      break;
    case classificacao.OBESIDADE_GRAU_III:
      print('Obesidade grau III');
      break;
    default:
      throw ImcErrorException();
  }
}
