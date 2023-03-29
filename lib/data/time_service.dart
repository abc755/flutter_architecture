import 'package:flutter_architecture/data/models/time_data_model.dart';
import 'package:flutter_architecture/data/services.dart';

class TimeServiceServer implements TimeService {
  @override
  TimeData getCurrentTime() {
    return TimeData(
        timestamp: DateTime.now().millisecondsSinceEpoch,
        date: DateTime.now().toString());
  }
}
