class HeightErrorException implements Exception {
  String message() => 'Height must be a number and greater than 0';

  @override
  String toString() => "HeigthErrorException: ${message()}";
}
