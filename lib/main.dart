import 'package:flutter/material.dart';
import 'package:qrcode/screens/readqr.dart';
import 'package:qrcode/screens/scanqr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const crsqanner()));

                  print("create qr code");
                },
                child: const Text("create qr code ")),
         
            ElevatedButton(
                onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const readsqanner()));

                  print("read qr code");
                },
                child: const Text("read qr code ")),
         
         
          ],
        ),
      ),
    );
  }
}
