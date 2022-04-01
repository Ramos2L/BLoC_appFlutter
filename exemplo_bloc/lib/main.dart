import 'package:exemplo_bloc/cubit/saudacoes_cubit.dart';
import 'package:exemplo_bloc/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Exemplo utilizando BLoC',
      home: BlocProvider<SaudacoesCubit>(
        create: (context) => SaudacoesCubit(), 
        child: const Home(),
      ) 
    );
  }
}
