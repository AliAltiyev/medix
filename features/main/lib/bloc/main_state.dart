part of 'main_bloc.dart';

@immutable
sealed class MainState extends Equatable {}

final class MainInitial extends MainState {
  @override
  List<Object?> get props => <Object>[];
}

final class MainLoaded extends MainState {
  final List<Sound> relaxList;

  MainLoaded({
    required this.relaxList,
  });

  @override
  List<Object?> get props => <Object?>[
        relaxList,
      ];
}
