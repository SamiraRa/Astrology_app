import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guruji/ui/homepage.dart';
import 'package:guruji/ui/verification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        "/verify": (context) {
          return VerificationScreen();
        },
        "/homepage": (context) {
          return HomePage();
        }
      },
    );
  }
}
