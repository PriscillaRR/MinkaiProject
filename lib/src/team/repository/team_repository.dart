import 'package:MinkaiProject/provider/team/team_provider.dart';
import 'package:MinkaiProject/src/team/model/team_model.dart';
<<<<<<< HEAD

class TeamRepository{
  TeamProvider _teamProvider = TeamProvider();

  Future<List<TeamModel>> getTeamFromProvider(String token, String id) async{
    return await _teamProvider.getTeams(token, id);
  }
}

=======
import 'package:rxdart/rxdart.dart';

class TeamRepository {
  TeamProvider _teamProvider = TeamProvider();

  final PublishSubject<List<TeamModel>> teams =
      PublishSubject<List<TeamModel>>();
}
>>>>>>> d292a3000c365b779cd389f257df557562a2c2f4
