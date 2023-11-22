abstract class ValidateState<T> {
  final T? data;
  final String? error;

  const ValidateState({this.data, this.error});
}
