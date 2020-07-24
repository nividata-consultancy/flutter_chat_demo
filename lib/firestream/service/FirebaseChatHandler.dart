import 'package:flutter_chat_demo/firestream/utility/Path.dart';
import 'package:flutter_chat_demo/models/response/Message.dart';
import 'package:flutter_chat_demo/models/response/Threads.dart';
import 'package:flutter_chat_demo/user/entity/user.dart';

abstract class FirebaseChatHandler {
  Stream<UserKey> currentUserData(Path path);
  Stream<Message> listenOnChat(Path path, ThreadKey threads, String uid);

  Stream<Message> sendMessage(
      Path path, ThreadKey threads, Message message, String uid);

  Stream<ThreadKey> createThreadByUser( UserKey otherUser,String uid);
  Stream<ThreadKey> createMessageThread(Path path,String name, UserKey otherUser,String uid);
  Stream<ThreadKey> getThreadByMsgKey(Path path, String msgKey);
}