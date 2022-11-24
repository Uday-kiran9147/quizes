import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {


  var uid="202151039";
  var email="202151039@iiitv.ac.in";
var time=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$uid"),
      ),
      // margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      body: Column(
        children: [
          Text(
            'User ID: $uid',
            // style: TextStyle(fontSize: 18.0),
          ),
          Row(
            children: [
              Text(
                'Email: $email ',
                // style: TextStyle(fontSize: 18.0),
              ),
              // user!.emailVerified
                   Text(
                    style:TextStyle(color: Color.fromARGB(255, 37, 168, 41)),
                      'verified',
                      // style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                    ),
                  // TextButton(
                  //     onPressed: () => {
                  //       // verifyEmail()
                  //       },
                  //     child: Text('Verify Email'))
            ],
          ),
          Text(
            'Created: $time',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}