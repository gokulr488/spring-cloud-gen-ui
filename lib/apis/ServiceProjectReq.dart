// To parse this JSON data, do
//
//     final serviceProjectReq = serviceProjectReqFromJson(jsonString);

import 'dart:convert';

class ServiceProjectReq {
  ServiceProjectReq({
    required this.basePackageName,
    required this.baseProjectPath,
    required this.discoveryGatewayPort,
    required this.serviceName,
    this.overWriteExistingFiles = false,
    required this.servicePort,
  });

  String basePackageName;
  String baseProjectPath;
  String discoveryGatewayPort;
  String serviceName;
  bool overWriteExistingFiles;
  String servicePort;

  factory ServiceProjectReq.fromRawJson(String str) =>
      ServiceProjectReq.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceProjectReq.fromJson(Map<String, dynamic> json) =>
      ServiceProjectReq(
        basePackageName: json["basePackageName"],
        baseProjectPath: json["baseProjectPath"],
        discoveryGatewayPort: json["discoveryGatewayPort"],
        serviceName: json["serviceName"],
        overWriteExistingFiles: json["overWriteExistingFiles"],
        servicePort: json["servicePort"],
      );

  Map<String, dynamic> toJson() => {
        "basePackageName": basePackageName,
        "baseProjectPath": baseProjectPath,
        "discoveryGatewayPort": discoveryGatewayPort,
        "serviceName": serviceName,
        "overWriteExistingFiles": overWriteExistingFiles,
        "servicePort": servicePort,
      };
}
