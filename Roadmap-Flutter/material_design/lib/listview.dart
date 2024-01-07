import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  final List _transportName = [
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
  ];
  final List _transportIcons = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run
  ];
  ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViews'),
        backgroundColor: const Color(0xff577a7b),
      ),
      body: Container(
        color: const Color.fromARGB(255, 182, 196, 196),
        child: Padding(
          padding: const EdgeInsets.only(left: 6, right: 6, bottom: 6),
          child: ListView.builder(
            itemCount: _transportName.length,
            itemBuilder: (context, index) {
              return TransportWidgets(
                  transportIcon: _transportIcons[index],
                  transportName: _transportName[index]);
            },
          ),
        ),
      ),
    );
  }
}

class TransportWidgets extends StatelessWidget {
  final IconData transportIcon;
  final String transportName;
  const TransportWidgets(
      {super.key, required this.transportIcon, required this.transportName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Icon(
              transportIcon,
              size: 25,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              transportName,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class ListviewPage extends StatelessWidget {
//   final List _posts = [
//     'post 1',
//     'post 2',
//     'post 3',
//     'post 4',
//   ];

//   final List _story = [
//     'story 1',
//     'story 2',
//     'story 3',
//     'story 4',
//     'story 5',
//   ];
//   ListviewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('ListView'),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 150,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: _story.length,
//                 itemBuilder: (context, index) {
//                   return MyCircle(story: _story[index]);
//                 }),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _posts.length,
//               itemBuilder: (context, index) {
//                 return MySquare(posts: _posts[index]);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MySquare extends StatelessWidget {
//   final String posts;
//   const MySquare({super.key, required this.posts});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Container(
//         height: 400,
//         color: Colors.deepPurple[200],
//         child: Text(
//           posts,
//           style: const TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

// class MyCircle extends StatelessWidget {
//   final String story;
//   const MyCircle({super.key, required this.story});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 100,
//         width: 100,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.pink[200],
//         ),
//         child: Center(
//           child: Text(
//             story,
//             style: const TextStyle(fontSize: 20),
//           ),
//         ),
//       ),
//     );
//   }
// }
