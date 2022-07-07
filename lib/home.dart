import 'package:flutter/material.dart';

import 'contact.dart';
import 'login.dart';

class Home extends StatelessWidget{
  const Home({Key? key}):super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Basic"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome"),
            Text("To Natcha")
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mark Zuckerberg"),
              accountEmail: Text("mark@gmail.com"),
              currentAccountPicture: CircleAvatar(
                //child: Icon(Icons.android),
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
              ),
            ),
            ListTile(
              title: Text("Home",style: TextStyle(color: Colors.purpleAccent,fontSize: 14,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.home,color: Colors.indigo,size: 30,),
              onTap: (){
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text("Contact",style: TextStyle(color: Colors.purpleAccent,fontSize: 14,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.contacts,color: Colors.indigo,size: 30,),
              onTap: (){
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
            ListTile(
              title: Text("Login",style: TextStyle(color: Colors.purpleAccent,fontSize: 14,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.login,color: Colors.indigo,size: 30,),
              onTap: (){
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            ListTile(
              title: Text("Logout",style: TextStyle(color: Colors.purpleAccent,fontSize: 14,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.logout,color: Colors.indigo,size: 30,),
              onTap: (){
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }

}