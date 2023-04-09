import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets_bloc/tickets_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/presentation/widgets/ticket_widget.dart';

class TicketItemWidget extends StatelessWidget {
  const TicketItemWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketsBloc, TicketsState>(
      builder: (context, state) {
        final ticket = state.tickets[index];
        return Dismissible(
          onDismissed: (_) {
            context.read<TicketsBloc>().add(
              TicketsEvent.delete(
                ticket,
              ),
            );
          },
          key: ValueKey(ticket),
          background: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.delete_forever_outlined),
                SizedBox(
                  width: 200,
                ),
                Icon(Icons.delete_forever_outlined),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: TicketWidget(
              icon: Icon(Icons.file_present),
            ),
          ),
        );
      },
    );
  }
}
