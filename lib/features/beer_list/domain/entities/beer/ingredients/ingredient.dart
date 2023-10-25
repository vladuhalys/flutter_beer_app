import 'package:equatable/equatable.dart';

import 'hop.dart';
import 'malt.dart';

class Ingredients extends Equatable {
  final List<Malt>? malt;
  final List<Hop>? hops;
  final String? yeast;

  const Ingredients({this.malt, this.hops, this.yeast});

  @override
  List<Object?> get props {
    return [malt, hops, yeast];
  }
}
