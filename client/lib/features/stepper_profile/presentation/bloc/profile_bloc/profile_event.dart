part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getInitialData() = _GetInitialData;
  const factory ProfileEvent.getSubCategories({required String id}) = _GetSubCategories;
}