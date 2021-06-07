// To parse this JSON data, do
//
//     final baseProjectReq = baseProjectReqFromJson(jsonString);

import 'dart:convert';

class BaseProjectReq {
  BaseProjectReq({
    required this.rootProjectName,
    required this.basePackageName,
    required this.configServerPort,
    required this.discoveryGatewayPort,
    this.overWriteExistingFiles = false,
    required this.projectFolderPath,
  });
  String rootProjectName;
  late String basePackageName;
  String configServerPort;
  String discoveryGatewayPort;
  bool overWriteExistingFiles;
  String projectFolderPath;

  factory BaseProjectReq.fromRawJson(String str) =>
      BaseProjectReq.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseProjectReq.fromJson(Map<String, dynamic> json) => BaseProjectReq(
      basePackageName: json["basePackageName"],
      configServerPort: json["configServerPort"],
      discoveryGatewayPort: json["discoveryGatewayPort"],
      overWriteExistingFiles: json["overWriteExistingFiles"],
      projectFolderPath: json["projectFolderPath"],
      rootProjectName: json['rootProjectName']);

  Map<String, dynamic> toJson() => {
        "basePackageName": basePackageName,
        "configServerPort": configServerPort,
        "discoveryGatewayPort": discoveryGatewayPort,
        "overWriteExistingFiles": overWriteExistingFiles,
        "projectFolderPath": projectFolderPath,
        "rootProjectName": rootProjectName,
      };
}
