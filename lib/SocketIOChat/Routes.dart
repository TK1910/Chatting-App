import 'package:app_chatting/SocketIOChat/ChatScreen.dart';
import 'package:app_chatting/SocketIOChat/ChatUsersScreen.dart';
import 'package:app_chatting/SocketIOChat/LoginScreen.dart';

class Routes{
  //
  static routes(){
      return {
        LoginScreen.ROUTE_ID: (context) => LoginScreen(),
        ChatUsersScreen.ROUTE_ID: (context) => ChatUsersScreen(),
        ChatScreen.ROUTE_ID: (context) => ChatScreen(),
      };
}

  static initScreen(){
    return LoginScreen.ROUTE_ID;
  }
}