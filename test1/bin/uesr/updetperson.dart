import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:supabase/supabase.dart';
import '../Supabase/supabaseEnv.dart';
import '../Response/CustomResponse.dart';

updetperson(Request req) async {
  try {
    final Map body = json.decode(await req.readAsString());
    File myfile = File('myrepository.json');
    final User  presonData =
        User.fromJson(json: json.decode(await myfile.readAsString()));
    if (body.containsKey("name")) {
      presonData.name = body["name"];
    }
    if (body.containsKey("age")) {
      presonData.age = body["age"];
    }
    await myfile.writeAsString(json.encode(User.toMap()));
    return CustomResponse().successResponse(msg: "update user is working!");
  } catch (error) {
    print(error);
    return CustomResponse().errorResponse(msg: "something went wrong!");
  }
}