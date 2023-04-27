import 'package:flutter/material.dart';
import 'package:flutter_http/model.dart';
import 'package:flutter_http/post_api.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? _postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("API Demo HTTP"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(_postResult != null
                  ? _postResult!.id +
                      " | " +
                      _postResult!.name +
                      " | " +
                      _postResult!.job +
                      " | " +
                      _postResult!.created
                  : 'Tidak ada data'),
              GestureDetector(
                onTap: () {
                  PostApi.connectToAPI("Badu", "Dokter").then((value) {
                    _postResult = value;
                    setState(() {});
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 50,
                  width: 100,
                  child: Center(child:Text("POST", style: TextStyle(color: Colors.white),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
