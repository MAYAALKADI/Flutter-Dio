import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_us_screen.dart';
import 'language_screen.dart';
import 'notification_screen.dart';
// import 'AboutUs_Page.dart';
// import 'Language_Page.dart';
// import 'Notification_Page.dart';
class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Setting", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 25),
          )), body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [Row(children: [
          CircleAvatar(
            //child: Padding(padding: EdgeInsets.only(right: 15)),
            radius: 40,
            backgroundImage: AssetImage('images/IMG-20241203-WA0152.jpg'), // ضع صورة البروفايل هنا
          ),
          // SizedBox(height: 16),
          // Text(
          // 'User Name',
          // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          SizedBox(width: 15),
          Expanded(
            child:
            TextField(cursorColor: Color(0xff8B0000),
              decoration:const InputDecoration(
                label: Text('User Name',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color:Color(0xff8B0000),
                ),
                ),

              ),
            ),)],
        ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.notifications),
            iconColor: Color(0xff8B0000),
            title: Text('Notifications', style: TextStyle(color: Color(0xff000000))),
            onTap: () {
              //  Navigator.pushNamed(context, '/notifications');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>NotificationsPage()),
              );
            },
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.language),
            iconColor: Color(0xff8B0000),
            title: Text('Language', style: TextStyle(color: Color(0xff000000))),
            onTap: () {
              // Navigator.pushNamed(context, '/language');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>LanguagePage()),
              );
            },
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.help_rounded),
            iconColor: Color(0xff8B0000),
            title: Text('About Us!', style: TextStyle(color: Color(0xff000000))),
            onTap: () {
              //  Navigator.pushNamed(context, '/aboutus');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>AboutUsPage()),
              );
            },
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.star),
            iconColor: Color(0xff8B0000),
            title: Text('Points', style: TextStyle(color: Color(0xff000000))),

          ),
          Spacer(),
          ElevatedButton.icon(
            onPressed: () {
              // أضف هنا وظيفة تسجيل الخروج
            },
            icon: Icon(Icons.logout),
            label: Text('LogOut',style: TextStyle(color: Color(0xff000000)),),
            style: ElevatedButton.styleFrom(
              iconColor: Color(0xff8B0000),
            ),
          ),
        ],
      ),
    ),
    );
  }
}