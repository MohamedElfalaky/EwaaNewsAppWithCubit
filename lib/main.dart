import 'package:ewaa_newz_app/screens/home/cubit/home_screen_cubit.dart';
import 'package:ewaa_newz_app/screens/home/home_screen.dart';
import 'package:ewaa_newz_app/screens/home/home_screen_with_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeScreenCubit>(
          create: (BuildContext context) => HomeScreenCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreenWithCubit(),
      ),
    );
  }
}
