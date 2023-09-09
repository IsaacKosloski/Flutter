import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/execption/height_error_exception.dart';
import 'package:calculadora_imc/execption/imc_error_exception.dart';
import 'package:calculadora_imc/execption/name_error_exception.dart';
import 'package:calculadora_imc/execption/weight_error_exception.dart';
import 'package:test/test.dart';

void main() {
  //Testes de exceções
  group('Testa exceções', () {
    test('Testa exceção de nome', () {
      expect(() => NameErrorException(), throwsException);
    });
    test('Testa exceção de peso', () {
      expect(() => WeightErrorException(), throwsException);
    });
    test('Testa exceção de altura', () {
      expect(() => HeightErrorException(), throwsException);
    });
    test('Testa exceção de IMC', () {
      expect(() => ImcErrorException(), throwsException);
    });
  });
}
