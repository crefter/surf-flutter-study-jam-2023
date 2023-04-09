import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/datasource/local_datasource.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/datasource/remote_datasource.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/model/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repository/ticket_repository.dart';

class TicketRepositoryImpl extends TicketRepository {
  final LocalDatasource _localDatasource;
  final RemoteDatasource _remoteDatasource;
  late CancelToken token = CancelToken();

  TicketRepositoryImpl({
    required LocalDatasource local,
    required RemoteDatasource remote,
  })  : _localDatasource = local,
        _remoteDatasource = remote;

  @override
  Future<List<Ticket>> getAll() async {
    final tickets = await _localDatasource.getAll();
    return tickets
        .map<Ticket>((e) => Ticket(
              e.id,
              e.name,
              e.url,
              e.isLoaded,
              e.path,
            ))
        .toList();
  }

  @override
  Future<String> getFilePath(int id) async {
    return await _localDatasource.getFilePath(id);
  }

  @override
  Future<void> save(Ticket ticket) async {
    await _localDatasource.save(
      ticket.id,
      ticket.name,
      ticket.url,
      ticket.isLoaded,
    );
  }

  @override
  Future<void> download(int id, String url, downloadPercentageChanged) async {
    final tmp = await getTemporaryDirectory();
    final path = '${tmp.path}$id.pdf';
    await _localDatasource.savePath(id, path);
    return _remoteDatasource.download(
      url,
      path,
      downloadPercentageChanged,
      token,
    );
  }

  @override
  Future<void> delete(int id) async {
    await _localDatasource.delete(id);
  }

  @override
  Future<void> update(
    int id,
    String name,
    String url,
    bool isLoaded,
    String path,
  ) async {
    await _localDatasource.update(
      id,
      name,
      url,
      isLoaded,
      path,
    );
  }

  @override
  Future<List<Ticket>> getSortedByDateAndState() async {
    final sortedTickets = await _localDatasource.getSortedByDateAndState();
    return sortedTickets
        .map((e) => Ticket(
              e.id,
              e.name,
              e.url,
              e.isLoaded,
              e.path,
            ))
        .toList();
  }

  @override
  Future<void> cancel() async {
    try {
      token.cancel();
    } catch (e) {
      rethrow;
    }
  }
}
