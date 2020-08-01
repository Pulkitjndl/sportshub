  
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:sportshub/bloc/player_listning_event.dart';
import 'package:sportshub/bloc/player_listning_state.dart';
import 'package:sportshub/models/api_models.dart';
import 'package:sportshub/services/repository.dart';

class PlayerListingBloc extends Bloc<PlayerListingEvent, PlayerListningState> {
  final PlayerRepository playerRepository;
  PlayerListingBloc({this.playerRepository}) : assert(playerRepository != null);

   @override
  void onTransition(Transition<PlayerListingEvent, PlayerListningState> transition) {
    super.onTransition(transition);
    print(transition);
  }
  @override
  PlayerListningState get initialState => PlayerUninitializedState();

  @override
  Stream<PlayerListningState> mapEventToState(PlayerListingEvent event) async* {
     yield PlayerFetchingState();
      List<Players> players;
      try {
        if (event is CountrySelectedEvent) {
          players = await playerRepository
              .fetchPlayersByCountry(event.nationModel.countryId);
        } else if (event is SearchTextChangedEvent) {
          print("Hitting service");
          players = await playerRepository.fetchPlayersByName(event.searchTerm);
        }
        if (players.length == 0) {
          yield PlayerEmptyState();
        } else {
          yield PlayerFetchedState(players: players);
        }
      } catch (_) {
        yield PlayerErrorState();
      }
    }
  }