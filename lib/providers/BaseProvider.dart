import 'package:flutter/foundation.dart';

enum Status { IDLE, LOADING, ERROR, SUCCESS }

abstract class BaseProvider with ChangeNotifier {
  String _errorMessage;

  Status _state = Status.IDLE;

  Map<String, List<String>> _errors;

  //
  set errors(Map<String, dynamic> errors) {
    _errors =
        errors.map((String key, dynamic err) => MapEntry(key, List.from(err)));
  }

  set message(String message) {
    _errorMessage = message;
  }

  setState(state) {
    _state = state;
    notifyListeners();
  }

  get state => _state;

  // Get error message
  get message => _errorMessage;

  // Check if field has any error
  bool hasError(String field) {
    return _errors.containsKey(field);
  }

  // get error for field
  List<String> error(String field) {
    if (_errors.containsKey(field)) {
      return _errors[field];
    }
    return null;
  }
}
