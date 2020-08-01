import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportshub/UI/message.dart';
import 'package:sportshub/bloc/player_listning_boc.dart';
import 'package:sportshub/bloc/player_listning_state.dart';
import 'package:sportshub/models/api_models.dart';
import 'package:sportshub/pages/player_profile.dart';

class BlocListning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<PlayerListingBloc>(context),
      builder: (context,state){
        if (state is PlayerUninitializedState){
          return Message(message: 'uninstalled state');
        }
        else if (state is PlayerFetchingState){
          return Expanded(child: Center(child: CircularProgressIndicator()),);
        }
        else if (state is PlayerEmptyState){
          return Message(message: 'No Player Found');
        }
        else if (state is PlayerErrorState){
          return Message(message: 'error occured');
        }
        else {
          final stateAsPlayerFetchdeState = state as PlayerFetchedState;
          final players = stateAsPlayerFetchdeState.players;
          return buildPlayerList(players);
        }
      }
    );
  }
  buildPlayerList(List<Players>players){
    return Expanded(
      child:ListView.separated(
      itemBuilder: (BuildContext context,index){
        Players player = players[index];
        return Container(
          color:Colors.white30,
          child: ListTile(
            leading:CircleAvatar(
              child:Image.network(player.headshot.imgUrl),
              radius: 20.0,
              backgroundColor: Colors.blue[50],
              ),
              title: Text(
                player.name,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black
                ),
              ),
              subtitle: Text(
                "Age"+player.age.toString(),
                style: TextStyle(fontSize: 16.0,color: Colors.black87),
              ),
              trailing: IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>PlayerProfile(player)));
                },
              ),
              ),
          );
      },
      separatorBuilder: (BuildContext context,index){
        return Divider(
          height: 8.0,
          color: Colors.transparent,
        );
      },
      itemCount: players.length,
      ),
       );
  }

}