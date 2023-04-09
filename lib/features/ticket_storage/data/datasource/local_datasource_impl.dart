import 'package:drift/drift.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/datasource/local_datasource.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/db/database.dart';

class LocalDatasourceImpl extends LocalDatasource {
  final Database db;

  LocalDatasourceImpl(this.db);

  @override
  Future<List<Ticket>> getAll() async {
    final response = await db.select(db.tickets).get();
    return response;
  }

  @override
  Future<String> getFilePath(int id) async {
    final query = db.select(db.tickets)
      ..where((tbl) => tbl.id.isValue(id) & tbl.path.isNotNull());
    final response = await query.getSingle();
    return response.path!;
  }

  @override
  Future<void> save(int id, String name, String url, bool isLoaded) async {
    await db.into(db.tickets).insert(TicketsCompanion.insert(
          id: id,
          name: name,
          url: url,
          isLoaded: isLoaded,
          insertDate: DateTime.now(),
        ));
  }

  @override
  Future<void> savePath(int id, String path) async {
    final query = db.update(db.tickets)..where((tbl) => tbl.id.isValue(id));
    await query.write(TicketsCompanion(path: Value(path)));
  }

  @override
  Future<void> delete(int id) async {
    final query = db.delete(db.tickets)..where((tbl) => tbl.id.isValue(id));
    await query.go();
  }

  @override
  Future<void> update(
    int id,
    String name,
    String url,
    bool isLoaded,
    String path,
  ) async {
    final query = db.update(db.tickets)..where((tbl) => tbl.id.isValue(id));
    await query.write(
      TicketsCompanion(
        name: Value(name),
        url: Value(url),
        isLoaded: Value(isLoaded),
        path: Value(path),
      ),
    );
  }

  @override
  Future<List<Ticket>> getSortedByDateAndState() async {
    final query = db.select(db.tickets)
      ..orderBy([
        (t) => OrderingTerm.asc(t.isLoaded),
        (t) => OrderingTerm(expression: t.insertDate),
      ]);
    return await query.get();
  }
}
