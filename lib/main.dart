import 'package:bloc_counter_app/bloc/counter/counter_bloc.dart';
import 'package:bloc_counter_app/ui/counter.dart';
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
    return BlocProvider(
      create: (BuildContext context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Counter(),
      ),
    );
  }
}


/* 
create a new repository on the command line:
echo "# simplecounterbloc" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/imziaurrehman/simplecounterbloc.git
git push -u origin main

push an existing repository from the command line:
git remote add origin https://github.com/imziaurrehman/simplecounterbloc.git
git branch -M main
git push -u origin main

*/