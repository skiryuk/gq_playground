class GqException implements Exception {
  final String? _message;
  final StackTrace? _stackTrace;

  GqException([this._message, this._stackTrace]);

  String toString() {
    return _message ?? '';
  }

  StackTrace? get stackTrace => _stackTrace;
}
