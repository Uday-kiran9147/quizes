import 'package:flutter/material.dart';
import 'package:quiz/widgets/sign_up.dart';
import './HomePage.dart';
import '../data/login_details.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  var email = "";
  var password = "";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(children: <Widget>[
          FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
                "https://img.freepik.com/premium-vector/quiz-time-with-clock-design_624938-413.jpg?w=826",
                height: 150
                // width: 20,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              overflow: TextOverflow.fade,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Valid Email";
                } else if (!value.contains('@')) {
                  return "please enter a valid email";
                }
                return null;
              },
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  labelText: "Email ID.."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter correct  Password";
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password",
                labelText: "Enter Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Text("Login"),
                    onPressed: () => {
                      if (_formkey.currentState!.validate())
                        {
                          setState(() {
                            email = emailController.text;
                            password = passwordController.text;
                          }),
                          login()
                        },
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("forgot password"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => SignUp(),
                            transitionDuration: Duration(seconds: 20),
                          ),
                          (route) => false);
                    },
                    child: Text("sign up"),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
