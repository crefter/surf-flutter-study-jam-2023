import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/datasource/local_datasource_impl.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/datasource/remote_datasource_impl.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/db/database.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/ticket_repository_impl.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repository/ticket_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets_bloc/tickets_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/ticket_storage_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final Database db = Database();
  final Dio dio = Dio();
  final TicketRepository ticketRepository = TicketRepositoryImpl(
    local: LocalDatasourceImpl(db),
    remote: RemoteDatasourceImpl(dio),
  );
  runApp(BlocProvider(
    create: (context) => TicketsBloc(ticketRepository: ticketRepository)
      ..add(
        const TicketsEvent.get(),
      ),
    child: MultiProvider(
      providers: [
        Provider.value(value: ticketRepository),
      ],
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        textTheme: const TextTheme().copyWith(
          titleMedium: const TextStyle(
            color: Color.fromARGB(255, 108, 86, 167),
          ),
          titleSmall: const TextStyle(
            color: Color.fromARGB(255, 137, 132, 141),
          ),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 108, 86, 167),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 108, 86, 167),
            foregroundColor: Colors.white,
            elevation: 0,
          ),
        ),
      ),
      home: const TicketStoragePage(),
    );
  }
}
