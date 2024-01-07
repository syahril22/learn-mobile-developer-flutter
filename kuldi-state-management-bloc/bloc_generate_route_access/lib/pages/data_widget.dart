import 'package:bloc_generate_route_access/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocConsumer<Counter, int>(
      bloc: BlocProvider.of<Counter>(context),
      builder: (context, state) {
        return Text('$state', style: const TextStyle(fontSize: 50));
      },
      listener: ((context, state) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text('Data Sudah Mencapai 5'),
          ),
        );
      }),
      listenWhen: (previous, current) {
        if (current == 5) {
          return true;
        } else {
          return false;
        }
      },
    ));
  }
}
