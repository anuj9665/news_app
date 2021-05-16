import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';
import 'package:news_app/view/profile.dart';
import 'package:news_app/view/videos.dart';

class SideNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: size.height*0.253,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Home(),
                ),
              );
            },
          ),
          Divider(
            height: 5.0,
            color: Colors.black,
            endIndent: size.width*0.055,
            indent: size.width*0.055,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Profile(),
                ),
              );
            },
          ),
          Divider(
            height: 5.0,
            color: Colors.black,
            endIndent: size.width*0.055,
            indent: size.width*0.055,
          ),
          ListTile(
            leading: Icon(Icons.play_arrow),
            title: Text("Videos"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Videos(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
