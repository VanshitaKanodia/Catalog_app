import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Vanshita"),
                  accountEmail: Text("VkDev@gmail.com"),
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/146-1461473_default-profile-picture-transparent.png'),
                  ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,),
              title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                color: Colors.white,),
              title: Text("Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),
            )
          ],
        ),
      ),
    );
  }
}
