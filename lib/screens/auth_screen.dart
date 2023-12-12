import 'package:flutter/material.dart';
import 'package:remote/screens/chat_screen.dart';
import 'package:remote/widgets/auth/auth_form.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        onTap: (index) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ChatScreen()));
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_rounded),
            label: 'Firebase',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces_filled),
            label: 'Remote',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded),
            label: 'Online',
          ),
        ],
      ),
      body: AuthForm(),
    );
  }
}