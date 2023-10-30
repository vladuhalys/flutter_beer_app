import 'package:equatable/equatable.dart';

import 'temp.dart';

class FermentationEntity extends Equatable {
  final TempEntity temp;

  const FermentationEntity({required this.temp});

  factory FermentationEntity.empty() {
    return FermentationEntity(temp: TempEntity.empty());
  }

  @override
  List<Object?> get props => [temp];
}
