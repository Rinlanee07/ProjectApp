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
        scaffoldBackgroundColor: const Color.fromARGB(255, 254, 255, 255),
        textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 24, color: Colors.indigo),
        ),
      ),
      home: Builder(
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Scaffold(
              appBar: AppBar(
              title: const Text('รูป+ข้อความ+สีสัน'),
              backgroundColor: Colors.blue, // เพิ่มบรรทัดนี้เพื่อเปลี่ยนพื้นหลัง AppBar
            ),  
              body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 170, 207),
        border: Border.all(color: const Color.fromARGB(255, 233, 170, 207), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Padding(
  padding: const EdgeInsets.all(16.0),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(16), // ให้โค้งเหมือน container
    child: Image.asset(
      'assets/images/ktt.png',
      width: 80,
      height: 80,
      fit: BoxFit.cover,
    ),
  ),
),
          Expanded(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('ข้อความที่ 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.center, // ปุ่มอยู่กลาง container
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('คลิกที่นี่'),
          ),
        ],
      ),
    ],
  ),
),
        ],
      ),
    ),
                  const SizedBox(height: 16),
                 Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 97, 210, 255),
        border: Border.all(color: const Color.fromARGB(255, 97, 210, 255), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16), 
            child: Image.asset(
              'assets/images/ktt.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
          Expanded(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('ข้อความที่ 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.center, // ปุ่มอยู่กลาง container
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('คลิกที่นี่'),
          ),
        ],
      ),
    ],
  ),
),
          
        ],
      ),
    ),
                  const SizedBox(height: 16),
                  Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 130, 245, 134),
        border: Border.all(color: const Color.fromARGB(255, 130, 245, 134), width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16), 
            child: Image.asset(
              'assets/images/ktt.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
          Expanded(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('ข้อความที่ 3', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.center, // ปุ่มอยู่กลาง container
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('คลิกที่นี่'),
          ),
        ],
      ),
    ],
  ),
),
          
        ],
      ),
    ),
  ],
),
              ),

        );
          },
        );
      },
    ),
);
}
}