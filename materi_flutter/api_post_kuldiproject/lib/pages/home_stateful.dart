import 'package:api_post_kuldiproject/models/http_stateful.dart';
import 'package:flutter/material.dart';

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  HttpStateful dataResponse =
      HttpStateful(id: "", name: "", job: "", createdAt: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POST - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                // ignore: unnecessary_null_comparison
                (dataResponse.id == "")
                    ? "ID : Belum ada data"
                    : "ID : ${dataResponse.id}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                // ignore: unnecessary_null_comparison
                (dataResponse.name == "")
                    ? "Belum ada data"
                    : dataResponse.name,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Job : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                // ignore: unnecessary_null_comparison
                (dataResponse.job == "") ? "Belum ada data" : dataResponse.job,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Created At : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                // ignore: unnecessary_null_comparison
                (dataResponse.createdAt == "")
                    ? "Belum ada data"
                    : dataResponse.createdAt,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpStateful.connectApi("Syahril Sobirin", "Web Developer")
                    .then((value) {
                  setState(() {
                    dataResponse = value;
                  });
                });
              },
              child: const Text(
                "POST DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
