import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'User.dart';

enum UserOnlineStatus{connecting, online, not_online}

class ChatTitle extends StatelessWidget{
  const ChatTitle({Key key,
  @required this.toChatUser,
  @required this.userOnlineStatus,
  });

  final User toChatUser;
  final UserOnlineStatus userOnlineStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
              Text(toChatUser.name),
              Text(_getStatusText(),
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),),
          ],
      ),
    );
  }

  _getStatusText(){
    if (UserOnlineStatus == UserOnlineStatus.online){
      return 'online';
    }
    if (UserOnlineStatus == UserOnlineStatus.not_online){
      return 'offline';
    }
    if (UserOnlineStatus == UserOnlineStatus.connecting){
      return 'connecting...';
    }
  }
}