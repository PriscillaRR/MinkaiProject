import 'package:flutter/material.dart';

class TeamModel {
  @JsonKey(name: '_id')
  String? id;
  String name;
  String? role;
  @JsonKey(
      defaultValue:
          "https://i.pinimg.com/564x/55/6c/38/556c381559c59fd2231498de3014e7c2.jpg")
  String profilePictureUrl;

  // Constructor
  TeamModel({
    Key? key,
    this.id,
    required this.name,
    this.role,
    this.profilePictureUrl = "",
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);
  Map<String, dynamic> toJson() => _$TeamModelToJson(this);
}
