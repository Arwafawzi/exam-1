
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';

import 'Routr/BaseRoute.dart';

void main() {
  withHotreload(() => createServer()  );
}
Future<HttpServer> createServer() async {
    final ip = InternetAddress.anyIPv4;
     final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = Pipeline().addMiddleware(logRequests()).addHandler(BaseRoute().handler);
  final server = await serve(handler,ip, port);
    print('Server is starting at http://${server.address.host}:${server.port}');
  return server;
}