class NetworkError {
  final String errorMessage;
  final dynamic status;
  final int statusCode;

  NetworkError(this.errorMessage, this.status, this.statusCode);

  @override
  String toString() {
    return 'NetworkError{errorMessage: $errorMessage, status: $status}';
  }
}
