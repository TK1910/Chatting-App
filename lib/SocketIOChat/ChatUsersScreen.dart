import 'package:app_chatting/SocketIOChat/User.dart';
import 'package:flutter/material.dart';
import 'Global.dart';

class ChatUsersScreen extends StatefulWidget{
  //

  ChatUsersScreen() : super();

  static const String ROUTE_ID = 'chat_users_screen';

  @override
  _ChatUsersScreenState createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen>{
  //
  List<User> _chatUsers;

  @override
  void initState(){
    super.initState();
    _chatUsers = G.getUsersFor(G.loggedInUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Users"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
                children: <Widget> [
                  Expanded(
                    child: ListView.builder(
                      itemCount: _chatUsers.length,
                      itemBuilder: (context, index) {
                        User user = _chatUsers[index];
                        return ListTile(
                          title: Text(user.name),
                          subtitle: Text('ID ${user.id}, Email: ${user.email}'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
       }
    }