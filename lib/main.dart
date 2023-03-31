import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/config/constant/app_name.dart';
import 'package:petskin/src/config/router/app_router.gr.dart';
import 'package:petskin/src/config/theme/app_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'assets/config/.env');
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'].toString(),
    anonKey: dotenv.env['SUPABASE_KEY'].toString(),
  );

  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: AppThemeData.appTheme,
    );
  }
}
