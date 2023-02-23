import 'package:chatgpt/constants/constants.dart';
import 'package:chatgpt/provider/chats_provider.dart';
import 'package:chatgpt/provider/models_provider.dart';
import 'package:chatgpt/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'introduction_animation/introduction_animation_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter ChatBOT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        home: const IntroductionAnimationScreen(),
        routes:{
          // "/login":(context) => LogIn(),
          // "/signup":(context) => SignUp(),
          "/home":(context) => ChatScreen(),
        }  ,
      ),
    );
  }
}
