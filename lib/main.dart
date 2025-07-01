import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  // var _id = "";
  // var _password = "";

  TextEditingController txtId = TextEditingController();
  TextEditingController txtPwd = TextEditingController();

  var isSaveId = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("입력필드테스트")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: txtId,
              decoration: InputDecoration(
                labelText: '아이디를 입력해주세요',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                print("45 아이디: ${txtId.text}");
                // _id = value;
              },
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtPwd,
              decoration: InputDecoration(
                labelText: '비밀번호를 입력해주세요',
                border: OutlineInputBorder(),
              ),
              // 비밀번호 암호화
              obscureText: true,
              onChanged: (value) {
                print("56 비밀번호: ${txtPwd.text}");
                // _password = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("67 아이디: ${txtId.text}, 비밀번호: ${txtId.text}");
              },
              child: Text("로그인"),
            ),
            Checkbox(
              value: isSaveId,
              onChanged: (value) {
                setState(() {
                  isSaveId = value!;
                });
                print("82 체크박스: ${isSaveId}");
              },
            ),
            Switch(
              value: isSaveId,
              onChanged: (value) {
                setState(() {
                  isSaveId = value;
                });
                print("91 스위치: ${isSaveId}");
              },
            ),
            Text(isSaveId ? "ON" : "OFF"),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
