part of 'main_bloc.dart';

@immutable
sealed class MainEvent extends Equatable {}

final class FetchRelaxSoundsEvent extends MainEvent {
  @override
  List<Object?> get props => <Object?>[];
}
