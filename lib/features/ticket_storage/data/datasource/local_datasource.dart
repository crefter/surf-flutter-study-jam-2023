import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/db/database.dart';

abstract class LocalDatasource {
  Future<List<Ticket>> getAll();

  Future<String> getFilePath(int id);

  Future<void> save(
    int id,
    String name,
    String url,
    bool isLoaded,
  );

  Future<void> savePath(int id, String path);

  Future<void> delete(int id);

  Future<void> update(
    int id,
    String name,
    String url,
    bool isLoaded,
    String path,
  );

  Future<List<Ticket>> getSortedByDateAndState();
}
