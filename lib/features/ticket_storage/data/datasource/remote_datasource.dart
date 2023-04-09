import 'package:dio/dio.dart';

typedef DownloadPercentageChanged = void Function(double current, double total);

abstract class RemoteDatasource {
  Future<void> download(
    String url,
    String path,
    DownloadPercentageChanged downloadPercentageChanged,
    CancelToken token,
  );
}
