import 'package:MinkaiProject/provider/generic_provider.dart';
import 'package:MinkaiProject/src/team/model/team_model.dart';
import 'dart:async';
import 'package:dio/dio.dart';

class TeamProvider {
  String _stagging_url = GenericProvider().getStagingUrl();

  Future<List<TeamModel>> getTeams(
    String token,
    String id,
  ) async {
    try {
      Response response = await Dio().get(
        '$_stagging_url/company/$id/admin',
        options: Options(
          headers: {
            'Authorization': '$token',
          },
        ),
      );
      var aux = response.data['message'];
      return parseToTeams(aux);
    } catch (e) {
      print('HA OCURRIDO UN ERROR');
      return [];
    }
  }
}

List<TeamModel> parseToTeams(data) {
  List<TeamModel> aux = [];

  for (final item in data) {
    aux.add(
      TeamModel.fromJson(item),
    );
  }

  return aux;
}
