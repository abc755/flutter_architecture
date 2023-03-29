import 'package:flutter_architecture/data/models/time_data_model.dart';

abstract class TimeService {
  TimeData getCurrentTime();
}