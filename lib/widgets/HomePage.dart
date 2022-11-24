import 'package:flutter/material.dart';
import './loginpage.dart';

class HomePage extends StatelessWidget {
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
                Navigator.pop(context,
                    MaterialPageRoute(builder: ((context) => LoginPage())))
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Dashboard',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'My Profile',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Change Password',

      //     )
      //   ],
      //   backgroundColor: Colors.green,
      // ),
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
                IconButton(onPressed: (dashboard), icon: Icon(Icons.person)),
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
