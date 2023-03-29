import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_data_model.freezed.dart';

@freezed
class TimeData with _$TimeData {
  const factory TimeData({
    required int timestamp,
    required String date,
  }) = _TimeData;
}
