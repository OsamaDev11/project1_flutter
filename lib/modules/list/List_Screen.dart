import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.C_s-eIm7CCEvo6xp0UjZ6AHaFj?pid=ImgDet&rs=1"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Chats",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt_sharp,
                  size: 16.0,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300]),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 5.0),
                    Text("Search")
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                  height: 100.0,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => listStory(),
                      separatorBuilder: (context, index) => SizedBox(width: 20.0),
                      itemCount: 10)),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                  itemBuilder: (context , index) =>lisChat(),
                  separatorBuilder: (context , index) =>SizedBox(height: 20.0,),
                  itemCount:50)
            ],
          ),
        ),
      ),
    );
  }

  Widget lisChat() => Row(
        children: [
          Container(
            width: 60.0,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.C_s-eIm7CCEvo6xp0UjZ6AHaFj?pid=ImgDet&rs=1"),
                  radius: 30.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 3, bottom: 3),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Anas Alsafadi",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.cyan)),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "I do not Know for this coursesdlkjsdlskjdlskjdlsjdljsd",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ),
                    Text("2.00 pm")
                  ],
                )
              ],
            ),
          )
        ],
      );
  Widget listStory() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.C_s-eIm7CCEvo6xp0UjZ6AHaFj?pid=ImgDet&rs=1"),
                  radius: 30.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 7.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Anas Alsafadi ",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
}
