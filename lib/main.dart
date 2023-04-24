import 'package:adavance_hafe_exam/Screen/Corona/View/CoronaScreen.dart';
import 'package:adavance_hafe_exam/Screen/Home/View/HomeScreen.dart';
import 'package:adavance_hafe_exam/Screen/Login/View/SignInScreen.dart';
import 'package:adavance_hafe_exam/Screen/Patton/Contorllor/PattenControllor.dart';
import 'package:adavance_hafe_exam/Screen/Patton/View/PattonScreen.dart';
import 'package:adavance_hafe_exam/Screen/Todo/View/SpleshScreen.dart';
import 'package:adavance_hafe_exam/Screen/Todo/View/TodoScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PattenControllor(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomeScreen(),
          'pattern': (context) => const PattonScreen(),
          'todo': (context) => const TodoScreen(),
          'todo1': (context) => const SpleshScreen(),
          'corona': (context) => const CoronaScreen(),
          'signIn': (context) => const SignInScreen(),
          // 'signIn': (context) => const SignInScreen(),
        },
      ),
    ),
  );
}
