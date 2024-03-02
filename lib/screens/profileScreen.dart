import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Profile', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),
          automaticallyImplyLeading: false),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 80.0,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, size: 150.0, color: Colors.white),
            // You can also use Image.asset to load a dummy image from your assets folder
            // child: Image.asset('assets/images/dummy.jpg'),
          ),
          SizedBox(height: 20.0),
          Text(
            'User',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Student at GECG',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18.0,
              //fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20.0),
          Divider(),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('user@gecg28.ac.in'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('+1 234 567 890'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Address'),
            subtitle: Text('Government enginnering college, sector 28, Gandhinagar'),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

