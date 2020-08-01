import 'package:flutter/material.dart';
import 'package:sportshub/pages/home.dart';
import 'package:sportshub/services/repository.dart';


void main(){
  final PlayerRepository _repository = PlayerRepository();
  runApp(MyApp(playerRepository:_repository));}

class MyApp extends StatelessWidget {
  final PlayerRepository playerRepository;
  MyApp({this.playerRepository});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Flutter bloc implementation',
     debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: HomePage(playerRepository: playerRepository),
    );
  }
}
