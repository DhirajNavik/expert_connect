part of 'navigation_cubit.dart';

base class NavigationState extends Equatable {
  final int selectedIndex;

  const NavigationState({required this.selectedIndex});

  NavigationState copyWith(int? selectedIndex) {
    return NavigationState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }

  @override
  List<Object?> get props => [selectedIndex];
}
