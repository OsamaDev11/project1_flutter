import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("First App"),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: () {
              print('notification clicked');
            },
          ),
          IconButton(
              onPressed: () {
                print('search clicked');
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0)
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [

                  const Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.C_s-eIm7CCEvo6xp0UjZ6AHaFj?pid=ImgDet&rs=1"),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    color: Colors.black,
                    width: 200.0,
                    child:  const Text(
                      "anas alsafadi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.yellow
                      ),

                    ),
                  )
                ],
              ),
            ),
          )

        ],
      ),  // )
    );
  }
}
