import 'package:MinkaiProject/provider/team/team_provider.dart';
import 'package:MinkaiProject/src/team/model/team_model.dart';
import 'package:rxdart/rxdart.dart';

class TeamRepository {
  TeamProvider _teamProvider = TeamProvider();

  final PublishSubject<List<TeamModel>> teams =
      PublishSubject<List<TeamModel>>();
}
