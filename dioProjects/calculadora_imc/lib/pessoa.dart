import 'package:calculadora_imc/enum/classificacao.dart';

class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;
  classificacao? _classificacao;

  Pessoa(this._nome, this._peso, this._altura);

  String? getNome() => _nome;
  double? getPeso() => _peso;
  double? getAltura() => _altura;
  classificacao? getClassificacao() => _classificacao;

  void setNome(String nome) => _nome = nome;
  void setPeso(double peso) => _peso = peso;
  void setAltura(double altura) => _altura = altura;
  void setClassificacao(classificacao classificacao) =>
      _classificacao = classificacao;

  double calculaIMC() => _peso! / (_altura! * _altura!);

  void classificaIMC() {
    double imc = calculaIMC();
    if (imc < 16) {
      setClassificacao(classificacao.MAGREZA_GRAVE);
    } else if (imc >= 16 && imc < 17) {
      setClassificacao(classificacao.MAGREZA_MODERADA);
    } else if (imc >= 17 && imc < 18.5) {
      setClassificacao(classificacao.MAGREZA_LEVE);
    } else if (imc >= 18.5 && imc < 25) {
      setClassificacao(classificacao.SAUDAVEL);
    } else if (imc >= 25 && imc < 30) {
      setClassificacao(classificacao.SOBREPESO);
    } else if (imc >= 30 && imc < 35) {
      setClassificacao(classificacao.OBESIDADE_GRAU_I);
    } else if (imc >= 35 && imc < 40) {
      setClassificacao(classificacao.OBESIDADE_GRAU_II);
    } else {
      setClassificacao(classificacao.OBESIDADE_GRAU_III);
    }
  }
}
