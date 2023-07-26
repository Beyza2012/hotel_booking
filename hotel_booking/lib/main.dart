import 'package:flutter/material.dart';
import 'package:hotel_booking/AramaSayfasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: AramaSayfa(),
      bottomNavigationBar: BottomNavigationBar(

        items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: "1",
         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.conveyor_belt),
            label: "3",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "4",
          ),

        ],
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.pink,
      ),

    );
  }
}
