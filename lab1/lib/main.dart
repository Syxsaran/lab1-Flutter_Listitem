import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> students = [
      {"name": "ศรันย์ ซุ่นเส้ง", "id": "643450086-6"},
      {"name": "ก้องภพ ตาดี", "id": "643450321-2"},
      {"name": "ชาญณรงค์ แต่งเมือง", "id": "643450069-6"},
      {"name": "กมล จันบุตรดี", "id": "643450063-8"},
      {"name": "นภัสสร ดวงจันทร์", "id": "643450326-2"},
      {"name": "เจษฏา พบสมัย", "id": "643450323-8"},
      {"name": "ประสิทธิชัย จันทร์สม", "id": "643450079-3"},
      {"name": "สุธาดา เสนามงคล", "id": "643450089-0"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: students[index]['name']!,
            studentId: students[index]['id']!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String studentId}) {
    final Map<String, String> nameToImage = {
      "ศรันย์ ซุ่นเส้ง": 'images/ศรันย์ ซุ่นเส้ง.jpg',
      "ก้องภพ ตาดี": 'images/ก้องภพ ตาดี.jpg',
      "ชาญณรงค์ แต่งเมือง": 'images/ชาญณรงค์ แต่งเมือง.jpg',
      "กมล จันบุตรดี": 'images/กมล จันบุตรดี.jpg',
      "นภัสสร ดวงจันทร์": 'images/นภัสสร ดวงจันทร์.jpg',
      "เจษฏา พบสมัย": 'images/เจษฏา พบสมัย.jpg',
      "ประสิทธิชัย จันทร์สม": 'images/ประสิทธิชัย จันทร์สม.jpg',
      "สุธาดา เสนามงคล": 'images/สุธาดา เสนามงคล.jpg',
    };

    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image(
            width: 100,
            image: AssetImage(nameToImage[name] ?? 'images/default.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: name == "ศรันย์ ซุ่นเส้ง" ? Colors.yellow : null,
                child: Text(
                  'ชื่อ: $name',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Container(
                color: studentId == "643450086-6" ? Colors.yellow : null,
                child: Text(
                  'รหัสนักศึกษา: $studentId',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
