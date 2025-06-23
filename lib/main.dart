import 'package:ecommerce/src/auth/createAccSuccess.auth.dart';
import 'package:ecommerce/src/auth/forget.auth.dart';
import 'package:ecommerce/src/auth/reset.auth.dart';
import 'package:ecommerce/src/auth/signin.auth.dart';
import 'package:ecommerce/src/auth/signup.auth.dart';
import 'package:ecommerce/src/elements/product.element.dart';
import 'package:ecommerce/src/pages/home.page.dart';
import 'package:ecommerce/src/pages/login.page.dart';
import 'package:ecommerce/src/pages/register.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/src/pages/main.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ANGKOR-APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MainPage(),
      //home: LoginPage(),
      //home: RegisterPage(),
      //home: SignInPage(),
      //home: SignUpPage(),
      //home: ForgetPassword(),
      //home: ResetPassword(),
      //home: CreateAccSuccess(),
      //home: HomePage(),
      home: ProductElement(),
    );
  }
}
