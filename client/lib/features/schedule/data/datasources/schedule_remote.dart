import 'package:client/core/dio/network_requester.dart';
import 'package:client/core/utils/app_url.dart';
import 'package:client/features/schedule/data/datasources/schedule_datasource.dart';
import 'package:client/features/schedule/data/models/schedule_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ScheduleDatasource)
class ScheduleRemote implements ScheduleDatasource {
  final NetworkRequester _network;
  const ScheduleRemote(this._network);

  @override
  Future<ScheduleModel> loadMySchedule() async {
    final response = await _network.get(AppUrl.mySchedule);
    return ScheduleModel.fromJson(response["data"]);
  }
}
