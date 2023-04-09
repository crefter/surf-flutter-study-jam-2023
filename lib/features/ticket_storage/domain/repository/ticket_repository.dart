import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/model/ticket.dart';

typedef DownloadPercentageChanged = void Function(double current, double total);

abstract class TicketRepository {
  Future<List<Ticket>> getAll();

  Future<String> getFilePath(int id);

  Future<void> save(Ticket ticket);

  Future<void> download(
    int id,
    String url,
    DownloadPercentageChanged downloadPercentageChanged,
  );

  Future<void> delete(int id);

  Future<void> update(
    int id,
    String name,
    String url,
    bool isLoaded,
    String path,
  );

  Future<List<Ticket>> getSortedByDateAndState();

  Future<void> cancel();
}
