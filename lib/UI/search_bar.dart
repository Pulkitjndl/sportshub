import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportshub/bloc/player_listning_boc.dart';
import 'package:sportshub/bloc/player_listning_event.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:16.0),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: TextField(
        onChanged: (term){
          BlocProvider.of<PlayerListingBloc>(context).dispatch(SearchTextChangedEvent(searchTerm: term));
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal:8.0,vertical:12.0),
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'search',
          prefixIcon: Icon(
            Icons.search,
            size: 30.0,
            color: Colors.white70,
          )
          ),
      ),
    );
  }
}