import 'package:flutter_beer_app/core/dto/supabase_dto/base/supabase_dto_base.dart';

class SupabaseDataSuccess<T> extends SupabaseDataState<T> {
  const SupabaseDataSuccess(T data) : super(data: data);
}
