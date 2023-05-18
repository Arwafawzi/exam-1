import 'dart:io';
import 'package:shelf/shelf.dart';
displayalltheuser(Request _)async{
  File myFile = File("myrepository.json");
  final con = await myFile.readAsString();
  return Response.ok(con,headers: {'Content-Type':'Application/json'});
}