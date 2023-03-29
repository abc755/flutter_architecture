import 'dart:async';
import 'package:flutter_architecture/data/models/time_data_model.dart';
import 'package:flutter_architecture/data/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_block.freezed.dart';

class MainBloc {
  final TimeService timeService;
  final StreamController<MainBlocEvent> _eventsController = StreamController();
  final StreamController<MainBlocState> _stateController =
      StreamController.broadcast();

  Stream<MainBlocState> get state =>_stateController.stream;

  MainBloc({required this.timeService}) {
    _eventsController.stream.listen((event) {
      event.map<void>(
          update: (_) => _stateController.add(MainBlocState.loaded(
                timeData: timeService.getCurrentTime(),
              )),
          init: (_) {
            _stateController.add(const MainBlocState.loading());
            _stateController.add(MainBlocState.loaded(
              timeData: timeService.getCurrentTime(),
            ));
          });
    });
  }

  void add(MainBlocEvent event) {
    if (_eventsController.isClosed) return;
    _eventsController.add(event);
  }

  void dispose() {
    _eventsController.close();
  }
}

@freezed
class MainBlocState with _$MainBlocState {
  const factory MainBlocState.loading() = MainLoadingState;

  const factory MainBlocState.loaded({required TimeData timeData}) =
      _MainLoadedState;
}

@freezed
class MainBlocEvent with _$MainBlocEvent {
  const factory MainBlocEvent.init() = _MainInitEvent;

  const factory MainBlocEvent.update() = _MainSetEvent;
}
