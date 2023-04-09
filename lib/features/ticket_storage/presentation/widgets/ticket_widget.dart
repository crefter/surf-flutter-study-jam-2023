import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/pdf_viewer/pdf_viewer_page.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/ticket_bloc/ticket_bloc.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({Key? key, required this.icon}) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        return ListTile(
          onLongPress: () {
            if (state.isLoaded) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => PdfViewerPage(file: state.file!),
              ));
            }
          },
          leading: icon,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              state.maybeWhen(
                orElse: () => LinearProgressIndicator(
                  value: state.value,
                ),
                loaded: (_) => const LinearProgressIndicator(
                  value: 1,
                ),
              ),
              state.maybeWhen(
                orElse: () => Text(
                  'Ожидает начала загрузки',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                loading: (ticket, current, max) => Text(
                  'Загружается ${current.toStringAsFixed(2)} Мб '
                  'из ${max.toStringAsFixed(2)} Мб',
                ),
                paused: (ticket) => const Text('Загрузка отменена'),
                loaded: (_) => const Text('Загружен'),
              ),
            ],
          ),
          trailing: state.when(
            waiting: (_) => IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.cloud_download_outlined),
              onPressed: () {
                context.read<TicketBloc>().add(
                      const TicketEvent.load(),
                    );
              },
            ),
            initial: () => const IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.cloud_download_outlined),
              onPressed: null,
            ),
            loading: (_, __, ___) => IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.pause_circle_outline_outlined),
              onPressed: () {
                context.read<TicketBloc>().add(
                      const TicketEvent.pause(),
                    );
              },
            ),
            loaded: (_) => IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.cloud_done_outlined),
              onPressed: () {},
            ),
            paused: (_) => IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.cloud_download_outlined),
              onPressed: () {
                context.read<TicketBloc>().add(
                      const TicketEvent.load()
                    );
              },
            ),
          ),
        );
      },
    );
  }
}
