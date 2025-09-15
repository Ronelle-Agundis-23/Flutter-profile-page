import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: 'My Profile App',
  theme: ThemeData(
    primarySwatch: Colors.blueGrey,
  ),
  home: ProfilePage(),
 );
  }
}

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //profile picture
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black38,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5)
                  )
                ],
              ),
              child: ClipOval(
                child: Image.network('https://th.bing.com/th/id/R.308f6a5048ea5fb4e97d9ce7884b6b3b?rik=Tg%2bnswFSe9cn1w&riu=http%3a%2f%2fimg01.deviantart.net%2f94c7%2fi%2f2013%2f241%2fb%2fa%2fkillua_zoldyck_by_sbddbz-d6k93ly.png&ehk=O%2fgyqEmjO1lvxifTrEeLITGaKREyc0chpyAHgm2zkzc%3d&risl=&pid=ImgRaw&r=0',
                    width: 150,
                  height: 150,
                  fit: BoxFit.cover, )
                ),
              ),
            //NAME
            SizedBox(height: 20),
            Text('Killua Zoldyck',style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),),

            //About me Section

            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About him:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                  ),
                  SizedBox(height: 10),
                  Text('Killua is a member of the infamous Zoldyck family, renowned for their elite assassins. From a young age, Killua was trained in the art of assassination, making him a highly skilled and deadly fighter. Despite his dark upbringing, Killua yearns for a normal life and freedom from his family’s control.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}