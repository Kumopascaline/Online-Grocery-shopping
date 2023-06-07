import 'package:e_grocery/screens/auth_screen/login_screen.dart';
import 'package:e_grocery/screens/bottom_page.dart';
import 'package:e_grocery/screens/bottom_screens/cart_screen.dart';
import 'package:e_grocery/screens/bottom_screens/checkout_screen.dart';
import 'package:e_grocery/screens/bottom_screens/favourite_screen.dart';
import 'package:e_grocery/screens/bottom_screens/home_screen.dart';
import 'package:e_grocery/screens/bottom_screens/product_screen.dart';
import 'package:e_grocery/screens/bottom_screens/profile_screen.dart';
import 'package:e_grocery/screens/landing_sreen.dart';
import 'package:e_grocery/screens/layout_screen.dart';
import 'package:e_grocery/screens/web_side/addProduct_screen.dart';
import 'package:e_grocery/screens/web_side/dashboard_screen.dart';
import 'package:e_grocery/screens/web_side/deleteProduct_screen.dart';
import 'package:e_grocery/screens/web_side/updateProduct_screen.dart';
import 'package:e_grocery/screens/web_side/web_login.dart';
import 'package:e_grocery/screens/web_side/web_main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAMDniiZ8D0ELOmXA2_qBcSh6gkiNW4p_M",
            authDomain: "e-grocery-cf5d2.firebaseapp.com",
            projectId: "e-grocery-cf5d2",
            storageBucket: "e-grocery-cf5d2.appspot.com",
            messagingSenderId: "708817453164",
            appId: "1:708817453164:web:7cd1c4067df3222d29d849",
            measurementId: "G-4Y1TPD3WKD"));
  } else {
    await Firebase.initializeApp();
  }
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: 'E-Grocery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: kIsWeb ? WebMainScreen() : const LoginScreen(),
        routes: {
          WebLoginScreen.id: (context) => WebLoginScreen(),
          WebMainScreen.id: (context) => WebMainScreen(),
          AddProductScreen.id: (context) => AddProductScreen(),
          UpdateProductScreen.id: (context) => UpdateProductScreen(),
          DeleteProductScreen.id: (context) => DeleteProductScreen(),
          DashBoardScreen.id: (context) => DashBoardScreen(),
        },
      ),
    );
  }
}
