class BestBuyApiException implements Exception {
  const BestBuyApiException(this.message);

  final String message;

  @override
  String toString() => message;
}
