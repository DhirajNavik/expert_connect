import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'remember_me_state.dart';

@injectable
class RememberMeCubit extends HydratedCubit<RememberMeState> {
  RememberMeCubit() : super(const RememberMeState());

  void toggleRememberMe(bool? value) {
    emit(state.copyWith(isRemember: value));
  }

  void saveIdentifier(String identifier) {
    if (!state.isRemember) {
      emit(const RememberMeState());
      return;
    }

    emit(state.copyWith(identifier: identifier));
  }

  @override
  RememberMeState? fromJson(Map<String, dynamic> json) {
    try {
      return RememberMeState(
        identifier: json['identifier'] as String?,
        isRemember: json['isRemember'] as bool? ?? false,
      );
    } catch (_) {
      return const RememberMeState();
    }
  }

  @override
  Map<String, dynamic>? toJson(RememberMeState state) {
    return {'identifier': state.identifier, 'isRemember': state.isRemember};
  }
}
