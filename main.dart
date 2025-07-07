import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color.fromARGB(255, 162, 213, 255),
        textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 24, color: Colors.indigo),
        ),
      ),
      home: Builder(
      builder: (context) {
        int index = 0;
        return StatefulBuilder(
          builder: (context, setState) {
            return Scaffold(
              appBar: AppBar(title: const Text('Column & Row Example')),
              body: Center(
          child: Container(
            width: 200,
            height: 100,
            margin: EdgeInsets.all(20),  
            padding: EdgeInsets.all(10),  
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Text(
              'Hello Container!',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: index,
                onTap: (i) => setState(() => index = i),
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                ],
              ),
            );
          },
        );
      },
    ),
);
}
}