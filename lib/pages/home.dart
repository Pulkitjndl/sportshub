import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportshub/UI/horizontal_bloc.dart';
import 'package:sportshub/UI/search_bar.dart';
import 'package:sportshub/bloc/player_listning_boc.dart';
import 'package:sportshub/pages/player_listning.dart';
import 'package:sportshub/services/repository.dart';

class HomePage extends StatefulWidget {
  final PlayerRepository playerRepository;
  HomePage({this.playerRepository});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PlayerListingBloc playerListingBloc;
  @override
  void initState(){
    super.initState();
    playerListingBloc =PlayerListingBloc(playerRepository: widget.playerRepository); 
  }
  @override
  void dispose(){
    super.dispose();
  }
  Widget build(BuildContext context) {
    return BlocProvider(
      builder:(BuildContext context)=>playerListingBloc,
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: Text('FootBall Players',style: TextStyle(color: Colors.white,fontSize: 30.0),),
          backgroundColor: Colors.transparent,
        ),
        body: Column(children: <Widget>[
          HorizontalBar(),
          SizedBox(height: 20.0),
          SearchBar(),
          SizedBox(height: 20.0),
          BlocListning(),
        ],
        ),
      ),
    );
  }
}