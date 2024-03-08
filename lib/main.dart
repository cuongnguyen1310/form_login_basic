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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Demo TextFiled widget")),
        body: const MyFormLogin(),
      ),
    );
  }
}

class MyFormLogin extends StatefulWidget {
  const MyFormLogin({super.key});

  @override
  State<MyFormLogin> createState() => _MyFormLoginState();
}

class _MyFormLoginState extends State<MyFormLogin> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 10,
          ),
          child: TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Username",
              labelStyle: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
              ),
            ),
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 10,
          ),
          child: TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Password",
              labelStyle: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
              ),
            ),
            style: const TextStyle(
              fontSize: 20,
            ),
            obscureText: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 20,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                username = usernameController.text;
                password = passwordController.text;
              });
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Center(
                child: Text(
                  "Đăng nhập",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Text(
          "Tên đăng nhập và mật khẩu là:",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        RichText(
            text: TextSpan(
          style: const TextStyle(
            fontSize: 20,
          ),
          children: [
            const TextSpan(
              text: "Username: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: username.isNotEmpty ? username : '',
            ),
          ],
        )),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 20,
            ),
            children: [
              const TextSpan(
                text: "Password: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: password.isNotEmpty ? password : '',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
