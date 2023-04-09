import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets_bloc/tickets_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/url_bloc/url_bloc.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Clipboard.getData(Clipboard.kTextPlain),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          String? url = snapshot.data?.text;
          if (url != null) {
            context.read<UrlBloc>().add(UrlEvent.validate(url, true));
          }
        }
        return BlocListener<UrlBloc, UrlState>(
          listener: (context, state) {
            if (state.isValidated) {
              _controller.text = state.url;
            }
            if (state.isSuccessful) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Билет добавлен успешно!'),
                ),
              );
              context
                  .read<TicketsBloc>()
                  .add(TicketsEvent.add(_controller.text));
              Navigator.pop(context);
            }
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 4,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: BlocBuilder<UrlBloc, UrlState>(
                        builder: (context, state) {
                          return TextField(
                            onChanged: (_) => context.read<UrlBloc>().add(
                                  const UrlEvent.change(),
                                ),
                            controller: _controller,
                            decoration: InputDecoration(
                              labelText: 'Введите url',
                              errorText: state.isCorrect
                                  ? null
                                  : 'Введите корректный Url',
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    BlocBuilder<UrlBloc, UrlState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: state.isCorrect
                              ? () {
                                  context.read<UrlBloc>().add(
                                        UrlEvent.add(_controller.text),
                                      );
                                }
                              : null,
                          child: const Text('Добавить'),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
