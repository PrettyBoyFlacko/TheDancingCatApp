import 'package:flutter/material.dart';
import 'package:hellokatty/screens/home/catListScreen.dart';
import 'package:hellokatty/services/auth.dart';


class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('The Dancing Cat',
          style: TextStyle(
              color: Color(0xFF31BFAF),
              fontSize: 32.0,
              fontStyle: FontStyle.italic)
          ),
          elevation: 0.0,
          actions: <Widget>[


            // Log out button.
            TextButton.icon(
              icon: Icon(Icons.person, color: Colors.black87,),
              label: Text('Log Out',
                style: TextStyle(color: Colors.black87),),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ],
        ),


      body: CatListScreen(),

    );
  }
}
