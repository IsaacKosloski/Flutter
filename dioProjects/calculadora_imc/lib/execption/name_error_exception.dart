class NameErrorException implements Exception {
  String errorMessage() => 'Error in name read!';

  @override
  String toString() {
    return "NameErrorException: ${errorMessage()}";
  }
}
