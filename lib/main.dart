import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridPaper Widget Exp',
      theme: ThemeData(
     primarySwatch: Colors.blue,
      ),
      home: const GridpaperWidgetScreen(),
    );
  }
}

class GridpaperWidgetScreen extends StatefulWidget {
  const GridpaperWidgetScreen({Key? key}) : super(key: key);

  @override
  _GridpaperWidgetScreenState createState() => _GridpaperWidgetScreenState();
}

class _GridpaperWidgetScreenState extends State<GridpaperWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridPaper Widget Exp"),
      ),
      body: const SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridPaper(
            color: Colors.blue,
            divisions: 1,
            interval: 200,
            subdivisions: 8,
          ),
        ),
      ),
    );
  }
}

