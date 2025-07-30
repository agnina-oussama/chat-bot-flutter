import 'package:flutter/material.dart';
import 'chat_page.dart'; // we’ll create this

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext ctx) =>
      MaterialApp(title: 'ChatGPT Bot', home: const ChatPage());
}
