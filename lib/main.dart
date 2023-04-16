import 'package:chatgptproject/constants/constants.dart';
import 'package:chatgptproject/providers/chats_provider.dart';
import 'package:chatgptproject/providers/models_provider.dart';
import 'package:chatgptproject/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ModelsProvider()),
          ChangeNotifierProvider(create: (_) => ChatProvider())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: scaffoldbackgroundColor,
              appBarTheme: AppBarTheme(color: cardColor)),
          home: const ChatScreen(),
        ));
  }
}
