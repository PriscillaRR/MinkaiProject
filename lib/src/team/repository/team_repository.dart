import 'package:MinkaiProject/provider/team/team_provider.dart';
import 'package:MinkaiProject/src/team/model/team_model.dart';

class TeamRepository{
  TeamProvider _teamProvider = TeamProvider();

  Future<List<TeamModel>> getTeamFromProvider(String token, String id) async{
    return await _teamProvider.getTeams(token, id);
  }
}

