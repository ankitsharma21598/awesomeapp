import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
                  ),
              ),
              accountName: Text("Ankit Sharma"), 
              accountEmail: Text("ankit.sharma21598@gmail.com"),
            
            ),
            
            ListTile(
              leading:Icon(Icons.home),
              title: Text("Home"),
              //subtitle: Text("Personal"),
              //trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading:Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading:Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("ankit.sharma21598@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading:Icon(Icons.shopping_cart),
              title: Text("Cart"),
              //subtitle: Text("Personal"),
            ),
            ListTile(
              leading:Icon(Icons.lock),
              title: Text("Change Password"),
              //subtitle: Text("Personal"),
            ),
            ListTile(
              leading:Icon(Icons.account_balance_wallet),
              title: Text("Wallet"),
              //subtitle: Text("Personal"),
            ),
            
            ListTile(
              leading:Icon(Icons.logout_sharp),
              title: Text("Logout"),
              //subtitle: Text("Personal"),
            ),
            
          ],
        ),
      );
  }
}