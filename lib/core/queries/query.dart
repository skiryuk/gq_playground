
import 'package:equatable/equatable.dart';

abstract class IQuery<Input, Output> {
  Future<Output> call(Input params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}