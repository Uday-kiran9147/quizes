import 'package:flutter/material.dart';
import 'package:quiz/widgets/user_profile.dart';
import './loginpage.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void dashboard() {
    print("dashboard");
  }

  late String person_name = "BEGARI UDAY KIRAN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              heightFactor: 1,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 45,
                      ),
                      Text(
                        "$person_name",
                        style: TextStyle(fontSize: 23),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "UpComming Events",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () => {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    ((route) => false))
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("BEGARI UDAY KIRAN"),
                accountEmail: Text("202151039@iiitvadodara.ac.in"),
                currentAccountPicture: Icon(
                  Icons.person,
                  size: 45,
                )
                //CircleAvatar(
                // backgroundImage: AssetImage(
                //   "assets/uday.jpg",
                // ),
                // )
                ),
            Row(
              children: [
                IconButton(onPressed: (dashboard), icon: Icon(Icons.history)),
                Text("DashBoard"),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserProfile()),
                    );
                  },
                  icon: Icon(Icons.person),

                  // onPressed: (dashboard),{Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()) }, icon: Icon(Icons.person)
                ),
                Text("Profile"),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: (dashboard), icon: Icon(Icons.book_rounded)),
                Text(
                  "Grades",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (dashboard), icon: Icon(Icons.logout)),
                Text("Log-Out"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}









/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class UserMain extends StatefulWidget {
  UserMain({Key? key}) : super(key: key);

  @override
  _UserMainState createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    // Dashboard(),
    // Profile(),
    // ChangePassword(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Welcome User"),
            ElevatedButton(
              onPressed: () async => {
                await FirebaseAuth.instance.signOut(),
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => false)
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
            )
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Change Password',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
*/