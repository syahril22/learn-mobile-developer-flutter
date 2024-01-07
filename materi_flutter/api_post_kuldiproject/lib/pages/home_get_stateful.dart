import 'dart:math';

import 'package:api_post_kuldiproject/models/http_get_statefull.dart';
import 'package:flutter/material.dart';

class HomeStatefulGet extends StatefulWidget {
  @override
  _HomeStatefulGetState createState() => _HomeStatefulGetState();
}

class _HomeStatefulGetState extends State<HomeStatefulGet> {
  HttpStatefulGet dataresponse =
      HttpStatefulGet(id: "", email: "", fullname: "", avatar: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                child: Image.network(
                  (dataresponse.avatar == "")
                      ? "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg?itok=PANMBJF-"
                      : dataresponse.avatar,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Text(
                (dataresponse.id == "")
                    ? "ID : Belum ada data"
                    : dataresponse.id,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataresponse.fullname == "")
                    ? "Belum ada data"
                    : dataresponse.fullname,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Email : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataresponse.email == "")
                    ? "Belum ada data"
                    : dataresponse.email,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpStatefulGet.connectApi(
                        (1 + Random().nextInt(10)).toString())
                    .then((value) {
                  setState(() {
                    dataresponse = value;
                  });
                });
              },
              child: Text(
                "GET DATA",
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
