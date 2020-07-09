import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_demo/user/entity/user.dart';

abstract class IUserRepository {
  Stream<void> authenticate(User user,AuthResult authResult);
}