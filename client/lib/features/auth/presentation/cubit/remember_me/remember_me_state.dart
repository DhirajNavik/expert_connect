part of 'remember_me_cubit.dart';

final class RememberMeState extends Equatable {
  const RememberMeState({this.identifier, this.isRemember = false});

  final String? identifier;
  final bool isRemember;

  RememberMeState copyWith({String? identifier, bool? isRemember}) {
    return RememberMeState(
      identifier: identifier,
      isRemember: isRemember ?? this.isRemember,
    );
  }

  @override
  List<Object?> get props => [identifier, isRemember];
}
