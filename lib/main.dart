import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodly/features/chapter/domain/repository/chapter_repository.dart';
import 'package:foodly/features/chapter/presentation/bloc/chapter_bloc.dart';

import 'features/chapter/presentation/screen/home/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => HomeScreenBloc(),

        child: HomeScreen(),
      ),
    );
  }
}
