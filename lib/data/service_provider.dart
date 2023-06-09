import 'package:flutter_architecture/data/services.dart';
import 'package:flutter_architecture/data/time_service.dart';
import 'package:get_it/get_it.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;
  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize() {
    _getIt.registerLazySingleton<TimeService>(() => TimeServiceServer());
  }
}