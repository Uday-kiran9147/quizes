import 'package:flutter/material.dart';
import 'package:rotating_icon_button/rotating_icon_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hi Uday....",
                style: TextStyle(
                    fontSize: 70,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Please Login....",
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              overflow: TextOverflow.fade,
              textDirection: TextDirection.ltr,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mobile",
                  labelText: "Enter Mobile...."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password",
                labelText: "Enter Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                // ElevatedButton(onPressed: (){}, child: Text("Login"),
                RotatingIconButton(
              onTap: () {},
              elevation: 10.0,
              shadowColor: Colors.pink,
              borderRadius: 20.0,
              rotateType: RotateType.semi,
              clockwise: true,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 40,
              ),
              background: Colors.blueAccent,
              child: const Icon(
                Icons.rocket,
                color: Colors.white,
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
