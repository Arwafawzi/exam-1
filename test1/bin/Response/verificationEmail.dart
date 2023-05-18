import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:supabase/supabase.dart';
import '../Supabase/supabaseEnv.dart';
import 'CustomResponse.dart';
verificationEmail(Request req) async {
  try {
    final Map body = json.decode (await req.readAsString());
await SupabaseEnv().supabase.auth.verifyOTP(
  token: body['OTP'],type: OtpType.signup,email: body['email'],
);    
    return CustomResponse().successResponse(msg: "Your account is confirm");
  } catch (e) {
    return CustomResponse().errorResponse(msg: "Not confirm! Try again");
  }
}