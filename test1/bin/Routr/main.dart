import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../Response/image/deleteanimage.dart';
import '../Response/displayalltheuser.dart';
import '../Response/image/postimage.dart';
import '../uesr/postuesr.dart';
import '../Response/verificationEmail.dart';
import '../uesr/updetperson.dart';
class AuthRoute{
  Handler get handler{
    final router=Router()
    ..post('/updetperson ',updetperson )
    ..post('/image',postimage)
    ..post('/displayalltheuser ',displayalltheuser )
..post('/ deleteanimage', deleteanimage)
  ..post('/verificationEmail',verificationEmail)
  ..post('/postuesr',postuesr);
  
    return router;
}
}
