import 'package:flutter_architecture/business/main_block.dart';
import 'package:flutter_architecture/data/service_provider.dart';
import 'package:flutter_architecture/data/services.dart';
import 'package:get_it/get_it.dart';

class BlockFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();
  static final instance = BlockFactory();

  void initialize() {
    ServiceProvider.instance.initialize();
    _getIt.registerFactory<MainBloc>(() =>
        MainBloc(timeService: ServiceProvider.instance.get<TimeService>()));
  }
}
