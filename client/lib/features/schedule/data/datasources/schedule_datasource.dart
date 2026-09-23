

import 'package:client/features/schedule/data/models/schedule_model.dart';

abstract interface class ScheduleDatasource {
  Future<ScheduleModel> loadMySchedule();

}