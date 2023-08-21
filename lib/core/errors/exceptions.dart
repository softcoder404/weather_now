class ServerException implements Exception {
  final String? message;
  final int? status;
  const ServerException({this.message, this.status});
}
