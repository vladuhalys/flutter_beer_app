abstract class ValidateState<T> {
  final T? data;
  final String? error;

  const ValidateState({this.data, this.error});
}

class ValidateSuccess<T> extends ValidateState<T> {
  const ValidateSuccess(T data) : super(data: data);
}

class ValidateFailed<T> extends ValidateState<T> {
  const ValidateFailed(String error) : super(error: error);
}
