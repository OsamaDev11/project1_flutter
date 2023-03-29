import 'package:flutter/material.dart';
import 'package:project1_flutter/models/user/User.dart';


class UserScreen extends StatelessWidget {
  List<User> users = [
    User(id: 1, name: "anas alsafadi", phone: "+95236562536"),
    User(id: 2, name: "enas alsafadi", phone: "+25252525252"),
    User(id: 3, name: "ali alsafadi", phone:  "+95236999356"),
    User(id: 4, name: "sara alsafadi", phone: "+95789565626"),
    User(id: 5, name: "said alsafadi", phone: "+99635656236"),
    User(id: 6, name: "alaa alsafadi", phone: "+95298566236"),
    User(id: 7, name: "ola alsafadi", phone:  "+95236562368"),
    User(id: 1, name: "anas alsafadi", phone: "+95236562536"),
    User(id: 2, name: "enas alsafadi", phone: "+25252525252"),
    User(id: 3, name: "ali alsafadi", phone:  "+95236999356"),
    User(id: 4, name: "sara alsafadi", phone: "+95789565626"),
    User(id: 5, name: "said alsafadi", phone: "+99635656236"),
    User(id: 6, name: "alaa alsafadi", phone: "+95298566236"),
    User(id: 7, name: "ola alsafadi", phone:  "+95236562368"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User"),
          
        ),
        body: ListView.separated(
            itemBuilder: (context , index)=> listTest(users[index]),
            separatorBuilder: (context , index) =>Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0
              ),
              child: Container(
                width: double.infinity,
                height: 1,
                color:Colors.grey[300],
              ),
            ),
            itemCount: users.length));
  }

  Widget listTest(User user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 20.5,
              child: Text(
                "${user.id}",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 20.0,),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.name}",
                  style: TextStyle(color: Colors.blue, fontSize: 22.0),
                ),
                Text(
                  "${user.phone}",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                )
              ],
            )
          ],
        ),
      );
}
