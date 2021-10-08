import 'package:flutter/material.dart';
import "package:app1/ui.dart";
import "Screen/LoadScreen.dart";
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'auth_social/google_sign_in.dart';
import 'package:flutter/foundation.dart';

import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  print("stare");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return GoogleSingInProvider();
      },
      child: MaterialApp(title: "app1", home: LoadScreen()
          //  Scaffold(
          //   body: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         ElevatedButton.icon(
          //             label: Text('Login', style: AppStyles.h3),
          //             icon: Icon(Icons.home),
          //             onPressed: () {
          //               print('Pressed');
          //             }),
          //         Image.asset(AppImages.nature)
          //       ],
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
