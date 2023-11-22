import 'package:flutter_beer_app/core/dto/supabase_dto/base/supabase_dto_base.dart';

class SupabaseDataFailed<T> extends SupabaseDataState<T> {
  const SupabaseDataFailed(String error) : super(error: error);
}
