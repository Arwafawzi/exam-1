import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http_parser/http_parser.dart';
import 'package:shelf/shelf.dart';

import '../CustomResponse.dart';

deleteanimage(Request req, String id) async {
  try {
      final contentType = MediaType.parse(req.headers["content-Type"]!);
  final file =File('bin/image/$id.${contentType.subtype}');
    if (await file.exists()) {
      file.delete();
    }
    return CustomResponse().successResponse(msg: "is deleted!");
  } catch (error) {
    print(error);

    return CustomResponse().errorResponse(msg: "something went wrong!");
  }
}