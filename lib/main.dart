import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:inquire/screen/about_screen.dart';
import 'package:inquire/screen/game_screen.dart';
import 'package:inquire/screen/home_screen.dart';
import 'package:inquire/screen/question_list_screen.dart';
import 'package:inquire/util/locator.dart';
import 'package:inquire/util/palette.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _startApp();
}

Future<void> _startApp() async {
  await setupLocator();
  runApp(
    const ProviderScope(
      child: InquireApp(),
    ),
  );
}

class InquireApp extends StatefulWidget {
  const InquireApp({Key? key}) : super(key: key);

  @override
  State<InquireApp> createState() => _InquireAppState();
}

class _InquireAppState extends State<InquireApp> {
  late final router = GoRouter(
    debugLogDiagnostics: !kReleaseMode,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'game',
            builder: (context, state) => const GameScreen(),
          ),
          GoRoute(
            path: 'questions',
            builder: (context, state) => const QuestionListScreen(),
          ),
          GoRoute(
            path: 'about',
            builder: (context, state) => const AboutScreen(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Inquire',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Palette.primaryColor,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
        ),
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
