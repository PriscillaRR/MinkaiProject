part of 'team_model.dart';

TeamModel _$TeamModelFromJson(Map<String, dynamic> json){
  return TeamModel(
    id: json['_id'] as String?,
    name: json['name'] as String,
    role: json['role'] as String?,

  );
}
Map<String, dynamic> _$TeamModelToJson(TeamModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'role': instance.role,
    };