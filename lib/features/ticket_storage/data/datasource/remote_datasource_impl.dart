import 'dart:async';

import 'package:dio/dio.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/datasource/remote_datasource.dart';

class RemoteDatasourceImpl extends RemoteDatasource {
  final Dio dio;

  RemoteDatasourceImpl(this.dio);

  @override
  Future<void> download(
    String url,
    String path,
    downloadPercentageChanged,
    token,
  ) async {
    try {
      await dio.download(
        url,
        path,
        onReceiveProgress: (count, total) {
          double mbCount = count / 1024 / 1024;
          double mbTotal = total / 1024 / 1024;
          downloadPercentageChanged(mbCount, mbTotal);
        },
        cancelToken: token,
      );
    } catch (e) {
      rethrow;
    }
  }
}
