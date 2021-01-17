class CustomException implements Exception {
  final _message;
  Map<String, dynamic> _errors;
  CustomException([this._message, this._errors]);

  get message => _message;

  get errors => _errors;

  @override
  String toString() => '$_message)';
}
