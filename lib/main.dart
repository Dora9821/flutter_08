import 'package:flutter/material.dart';
import 'package:flutter_08/feature/login/login_view.dart';
import 'package:flutter_08/router/router.dart';
import 'package:flutter_08/signup.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRouter.routes,
      home: const LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}
