abstract class FirebaseDataState<T> {
  final T? data;
  final Object? error;

  const FirebaseDataState({this.data, this.error});

  void then(bool Function(dynamic value) param0) {}
}
