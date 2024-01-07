import 'package:bloc_selector/bloc/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Selector'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // CARA YG KURANG EVISIEN
            // BlocBuilder<UserBloc, Map<String, dynamic>>(
            //   bloc: userBloc,
            //   builder: (context, state) {
            //     print("Build Name");
            //     return Text("Name : ${state['name']}");
            //   },
            // ),
            // BlocBuilder<UserBloc, Map<String, dynamic>>(
            //   bloc: userBloc,
            //   builder: (context, state) {
            //     print('Build Age');
            //     return Text("Age : ${state['age']}");
            //   },
            // ),

            // CARA YG BENAR
            BlocSelector<UserBloc, Map<String, dynamic>, String>(
                selector: (state) => state['name'],
                builder: (context, state) {
                  return Text("Name : $state");
                }),
            BlocSelector<UserBloc, Map<String, dynamic>, dynamic>(
                selector: (state) => state['age'],
                builder: (context, state) {
                  return Text("Age : $state Tahun");
                }),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) => userBloc.changeName(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    userBloc.changeAge(userBloc.state['age'] - 1);
                  },
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                    onPressed: () {
                      userBloc.changeAge(userBloc.state['age'] + 1);
                    },
                    icon: const Icon(Icons.add))
              ],
            )
          ],
        ));
  }
}
