import 'User.dart';

class G {
  //
  static List<User> dummyUsers;

  static User loggedInUser;

  static void initDummyUsers(){
    User userA = User(id: 1000, name: 'A', email: 'usuario1@gmail.com');
    User userB = User(id: 1000, name: 'B', email: 'usuario2@gmail.com');
    dummyUsers = List();
    dummyUsers.add(userA);
    dummyUsers.add(userB);
  }

  static List<User> getUsersFor(User user){
    List<User> filteredUsers = dummyUsers
        .where((u) => (!u.name.toLowerCase().contains(
           user.name.toLowerCase(),
        )
      ),
    )
        .toList();
    return filteredUsers;
  }
}