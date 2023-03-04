import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/config/const/app_name.dart';
import 'package:petskin/config/theme/app_theme.dart';
import 'package:petskin/core/view/splash/splash.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: APP_NAME,
        theme: AppThemeData.appTheme,
        home: const SplashPage(),
      ),
    ),
  );
}
