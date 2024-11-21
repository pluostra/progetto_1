import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home page davvero'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
          items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_outlined),
              label: 'news',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_sharp),
              label: 'Eventi',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_sharp),
              label: 'Altro',
            ),
          ],
      )
      );
  }
}
