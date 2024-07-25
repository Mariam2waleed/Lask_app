import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_app/features/article/controller/article_cubit.dart';
import 'package:lask_app/features/welcome_home/screens/welcome.dart';
import 'package:lask_app/features/welcome_home/controller/home_cubit.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  // FlutterNativeSplash.remove();
  initialization();
}

void initialization() async {
  // This is where you can initialize the resources needed by your app while
  // the splash screen is displayed.  Remove the following example because
  // delaying the user experience is a bad design practice!
  // ignore_for_file: avoid_print
  // print('ready in 3...');
  // await Future.delayed(const Duration(seconds: 1));
  // print('ready in 2...');
  // await Future.delayed(const Duration(seconds: 1));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 1));
  print('go!');
  FlutterNativeSplash.remove();
}

var dio = Dio();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeCubit()..getHomeData()),
          BlocProvider(create: (context) => ArticleCubit())
        ],
        child: const MaterialApp(
            title: 'Mariam Flutter Demo',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            home: WelcomePage()));
  }
}
