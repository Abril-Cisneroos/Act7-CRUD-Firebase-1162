import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/firebase_options.dart';
//pages
import 'package:myapp/pages/add_name_page.dart';
import 'package:myapp/pages/edit_name_pages.dart';
import 'package:myapp/pages/home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crud Abril Cisneros",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  Home(),
        '/Add': (context) =>  AddNamePage(),
        '/Edit': (context) => const EditNamePage(),
      },
    );
  }
}

