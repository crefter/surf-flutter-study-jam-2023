import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repository/ticket_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/ticket_bloc/ticket_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets_bloc/tickets_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/url_bloc/url_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/add_bottom_sheet.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/ticket_item_widget.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatefulWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  State<TicketStoragePage> createState() => _TicketStoragePageState();
}

class _TicketStoragePageState extends State<TicketStoragePage> {
  late final ScrollController _controller;
  bool isAddButtonVisible = true;
  double maxOffset = 0;
  bool isEnd = false;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();

    /// Для сокрытия кнопки.
    _controller.addListener(() {
      if (_controller.position.atEdge && _controller.offset > 0) {
        isAddButtonVisible = false;
        maxOffset = _controller.offset;
        isEnd = true;
        setState(() {});
      }
      if (maxOffset - 30 > _controller.offset && isEnd) {
        isAddButtonVisible = true;
        isEnd = false;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Хранение билетов'), actions: [
        IconButton(
          icon: const Icon(
            Icons.sort_outlined,
            semanticLabel: 'Сортировать по дате',
          ),
          onPressed: () {
            context.read<TicketsBloc>().add(
                  const TicketsEvent.sortByDateAndState(),
                );
          },
        ),
      ]),
      body: BlocBuilder<TicketsBloc, TicketsState>(
        builder: (context, state) {
          return state.map(
              empty: (_) => const Center(
                    child: Text('Здесь пока ничего нет'),
                  ),
              loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loaded: (loadedState) => CustomScrollView(
                    controller: _controller,
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: state.length,
                          (context, index) {
                            final ticket = state.tickets[index];
                            return BlocProvider(
                              key: ValueKey(ticket.id),
                              create: (context) => TicketBloc(
                                  repository: context.read<TicketRepository>())
                                ..add(
                                  TicketEvent.attach(
                                    ticket,
                                  ),
                                ),
                              child: TicketItemWidget(
                                index: index,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
              error: (errorState) => const Center(
                    child: Text('ошибка'),
                  ));
        },
      ),
      floatingActionButton: Visibility(
        visible: isAddButtonVisible,
        child: FloatingActionButton.extended(
          onPressed: () async {
            await showModalBottomSheet(
              context: context,
              builder: (builderContext) {
                return BlocProvider<UrlBloc>(
                  create: (context) => UrlBloc(),
                  child: const AddBottomSheet(),
                );
              },
            );
          },
          label: const Center(
            child: Text('Добавить'),
          ),
        ),
      ),
    );
  }
}
