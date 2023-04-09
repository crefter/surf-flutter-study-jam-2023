// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TicketsTable extends Tickets with TableInfo<$TicketsTable, Ticket> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TicketsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isLoadedMeta =
      const VerificationMeta('isLoaded');
  @override
  late final GeneratedColumn<bool> isLoaded =
      GeneratedColumn<bool>('is_loaded', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_loaded" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
      'path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _insertDateMeta =
      const VerificationMeta('insertDate');
  @override
  late final GeneratedColumn<DateTime> insertDate = GeneratedColumn<DateTime>(
      'insert_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, url, isLoaded, path, insertDate];
  @override
  String get aliasedName => _alias ?? 'tickets';
  @override
  String get actualTableName => 'tickets';
  @override
  VerificationContext validateIntegrity(Insertable<Ticket> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('is_loaded')) {
      context.handle(_isLoadedMeta,
          isLoaded.isAcceptableOrUnknown(data['is_loaded']!, _isLoadedMeta));
    } else if (isInserting) {
      context.missing(_isLoadedMeta);
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    }
    if (data.containsKey('insert_date')) {
      context.handle(
          _insertDateMeta,
          insertDate.isAcceptableOrUnknown(
              data['insert_date']!, _insertDateMeta));
    } else if (isInserting) {
      context.missing(_insertDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Ticket map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Ticket(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      isLoaded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_loaded'])!,
      path: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}path']),
      insertDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}insert_date'])!,
    );
  }

  @override
  $TicketsTable createAlias(String alias) {
    return $TicketsTable(attachedDatabase, alias);
  }
}

class Ticket extends DataClass implements Insertable<Ticket> {
  final int id;
  final String name;
  final String url;
  final bool isLoaded;
  final String? path;
  final DateTime insertDate;
  const Ticket(
      {required this.id,
      required this.name,
      required this.url,
      required this.isLoaded,
      this.path,
      required this.insertDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['url'] = Variable<String>(url);
    map['is_loaded'] = Variable<bool>(isLoaded);
    if (!nullToAbsent || path != null) {
      map['path'] = Variable<String>(path);
    }
    map['insert_date'] = Variable<DateTime>(insertDate);
    return map;
  }

  TicketsCompanion toCompanion(bool nullToAbsent) {
    return TicketsCompanion(
      id: Value(id),
      name: Value(name),
      url: Value(url),
      isLoaded: Value(isLoaded),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
      insertDate: Value(insertDate),
    );
  }

  factory Ticket.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Ticket(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      url: serializer.fromJson<String>(json['url']),
      isLoaded: serializer.fromJson<bool>(json['isLoaded']),
      path: serializer.fromJson<String?>(json['path']),
      insertDate: serializer.fromJson<DateTime>(json['insertDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'url': serializer.toJson<String>(url),
      'isLoaded': serializer.toJson<bool>(isLoaded),
      'path': serializer.toJson<String?>(path),
      'insertDate': serializer.toJson<DateTime>(insertDate),
    };
  }

  Ticket copyWith(
          {int? id,
          String? name,
          String? url,
          bool? isLoaded,
          Value<String?> path = const Value.absent(),
          DateTime? insertDate}) =>
      Ticket(
        id: id ?? this.id,
        name: name ?? this.name,
        url: url ?? this.url,
        isLoaded: isLoaded ?? this.isLoaded,
        path: path.present ? path.value : this.path,
        insertDate: insertDate ?? this.insertDate,
      );
  @override
  String toString() {
    return (StringBuffer('Ticket(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('isLoaded: $isLoaded, ')
          ..write('path: $path, ')
          ..write('insertDate: $insertDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, url, isLoaded, path, insertDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Ticket &&
          other.id == this.id &&
          other.name == this.name &&
          other.url == this.url &&
          other.isLoaded == this.isLoaded &&
          other.path == this.path &&
          other.insertDate == this.insertDate);
}

class TicketsCompanion extends UpdateCompanion<Ticket> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> url;
  final Value<bool> isLoaded;
  final Value<String?> path;
  final Value<DateTime> insertDate;
  final Value<int> rowid;
  const TicketsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.url = const Value.absent(),
    this.isLoaded = const Value.absent(),
    this.path = const Value.absent(),
    this.insertDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TicketsCompanion.insert({
    required int id,
    required String name,
    required String url,
    required bool isLoaded,
    this.path = const Value.absent(),
    required DateTime insertDate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        url = Value(url),
        isLoaded = Value(isLoaded),
        insertDate = Value(insertDate);
  static Insertable<Ticket> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? url,
    Expression<bool>? isLoaded,
    Expression<String>? path,
    Expression<DateTime>? insertDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (url != null) 'url': url,
      if (isLoaded != null) 'is_loaded': isLoaded,
      if (path != null) 'path': path,
      if (insertDate != null) 'insert_date': insertDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TicketsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? url,
      Value<bool>? isLoaded,
      Value<String?>? path,
      Value<DateTime>? insertDate,
      Value<int>? rowid}) {
    return TicketsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      isLoaded: isLoaded ?? this.isLoaded,
      path: path ?? this.path,
      insertDate: insertDate ?? this.insertDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (isLoaded.present) {
      map['is_loaded'] = Variable<bool>(isLoaded.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (insertDate.present) {
      map['insert_date'] = Variable<DateTime>(insertDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TicketsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('isLoaded: $isLoaded, ')
          ..write('path: $path, ')
          ..write('insertDate: $insertDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $TicketsTable tickets = $TicketsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tickets];
}
