abstract class SupabaseDataState<T> {
  final T? data;
  final String? error;

  const SupabaseDataState({this.data, this.error});
}
