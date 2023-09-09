class ImcErrorException implements Exception {
  final String _message = 'It was not possible to calculate the IMC!';
  String errorMessage() => _message;

  @override
  String toString() => "ImcErrorException: $errorMessage()";
}
