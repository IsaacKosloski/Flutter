class WeightErrorException implements Exception {
  final String _message = "The Weight must be a number and greater than 0!";

  String errorMessage() => _message;

  @override
  String toString() => "WeightErrorException: $errorMessage()";
}
