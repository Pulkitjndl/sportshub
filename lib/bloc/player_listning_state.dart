import 'package:flutter/material.dart';
import 'package:sportshub/models/api_models.dart';

abstract class PlayerListningState{}
class PlayerUninitializedState extends PlayerListningState{}
class PlayerFetchingState extends PlayerListningState{}
class PlayerFetchedState extends PlayerListningState{
  final List<Players>players;
  PlayerFetchedState({@required this.players});
}
class PlayerErrorState extends PlayerListningState{}
class PlayerEmptyState extends PlayerListningState{}