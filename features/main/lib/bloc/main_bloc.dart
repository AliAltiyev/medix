import 'dart:async';

import 'package:main/main.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final FetchRelaxSoundsUseCase fetchRelaxSoundsUseCase;

  MainBloc({
    required this.fetchRelaxSoundsUseCase,
  }) : super(MainInitial()) {
    on<FetchRelaxSoundsEvent>(_onFetchRelaxSongs);
  }

  FutureOr<void> _onFetchRelaxSongs(
    FetchRelaxSoundsEvent event,
    Emitter<MainState> emit,
  ) async {
    emit(MainInitial());
    final List<Sound> relaxList = fetchRelaxSoundsUseCase();
    emit(MainLoaded(relaxList: relaxList));
  }
}
