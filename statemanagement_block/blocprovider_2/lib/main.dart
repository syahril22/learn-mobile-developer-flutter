import 'package:blocprovider_2/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (_) => CounterBloc(), child: const HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) => Text(
                'Data saat ini : $state',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      bloc.add(CounterDecrementPressed());
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                  onPressed: () {
                    bloc.add(CounterIncrementPressed());
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}





















// Cubit 

// import 'package:blocprovider_2/counter.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:
//           BlocProvider(create: (_) => CounterCubit(), child: const HomePage()),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cubit = BlocProvider.of<CounterCubit>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cubit'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             BlocBuilder<CounterCubit, int>(
//               builder: (context, state) => Text(
//                 'Data saat ini : $state',
//                 style: const TextStyle(fontSize: 20),
//               ),
//             ),
//             IconButton(
//               onPressed: () {
//                 cubit.increment();
//               },
//               icon: const Icon(Icons.add),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
