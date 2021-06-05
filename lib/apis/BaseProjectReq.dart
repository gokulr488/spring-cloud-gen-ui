// To parse this JSON data, do
//
//     final baseProjectReq = baseProjectReqFromJson(jsonString);

import 'dart:convert';

class BaseProjectReq {
  BaseProjectReq({
    required this.basePackageName,
    required this.configServerPort,
    required this.discoveryGatewayPort,
    this.overWriteExistingFiles = false,
    required this.projectFolderPath,
    required this.projectName,
  });

  String basePackageName;
  String configServerPort;
  String discoveryGatewayPort;
  bool overWriteExistingFiles;
  String projectFolderPath;
  String projectName;

  factory BaseProjectReq.fromRawJson(String str) =>
      BaseProjectReq.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseProjectReq.fromJson(Map<String, dynamic> json) => BaseProjectReq(
        basePackageName: json["basePackageName"],
        configServerPort: json["configServerPort"],
        discoveryGatewayPort: json["discoveryGatewayPort"],
        overWriteExistingFiles: json["overWriteExistingFiles"],
        projectFolderPath: json["projectFolderPath"],
        projectName: json["projectName"],
      );

  Map<String, dynamic> toJson() => {
        "basePackageName": basePackageName,
        "configServerPort": configServerPort,
        "discoveryGatewayPort": discoveryGatewayPort,
        "overWriteExistingFiles": overWriteExistingFiles,
        "projectFolderPath": projectFolderPath,
        "projectName": projectName,
      };
}
