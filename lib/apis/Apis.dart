import 'package:http/http.dart' as http;
import 'package:springcloudgenui/apis/BaseprojectReq.dart';
import 'package:springcloudgenui/apis/CallContext.dart';
import 'package:springcloudgenui/apis/ServiceProjectReq.dart';

class Apis {
  final String baseUrl = 'http://localhost:9010';
  final Map<String, String> header = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };
  CallContext callContext = CallContext();

  Future<CallContext> generateBaseProject(BaseProjectReq req) async {
    String url = baseUrl + '/generate/baseProject';
    print('Base Project Req: $url');
    Uri uri = Uri.parse(url);
    try {
      final res = await http.post(uri, headers: header, body: req.toRawJson());
      if (res.statusCode == 200) {
        callContext.setSuccess(res.body);
        return callContext;
      } else {
        callContext.setError(res.reasonPhrase);
        return callContext;
      }
    } catch (e) {
      callContext.setError(e.toString());
      return callContext;
    }
  }

  Future<CallContext> generateServiceProject(ServiceProjectReq req) async {
    String url = baseUrl + '/generate/serviceProject';
    print('Service Project Req: $url');
    Uri uri = Uri.parse(url);
    try {
      final res = await http.post(uri, headers: header, body: req.toRawJson());
      if (res.statusCode == 200) {
        callContext.setSuccess(res.body);
        return callContext;
      } else {
        callContext.setError(res.reasonPhrase);
        return callContext;
      }
    } catch (e) {
      callContext.setError(e.toString());
      return callContext;
    }
  }
}
