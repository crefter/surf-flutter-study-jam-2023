import 'package:drift/drift.dart';

class Tickets extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get url => text()();
  BoolColumn get isLoaded => boolean()();
  TextColumn get path => text().nullable()();
  DateTimeColumn get insertDate => dateTime()();
}
