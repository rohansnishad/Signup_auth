import 'package:flutter/material.dart';
import 'package:signup_auth/Loginage.dart';
// import 'package:rog/screens/login1.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}



class _SignupPageState extends State<SignupPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _CpasswordController = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _Name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Page'),
      // ),
      body: Container(
        //
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // SizedBox(height: 12.0),

              Text('Welcome',style: TextStyle(fontFamily: 'Courgette', fontSize: 39,fontWeight: FontWeight.bold)),
              SizedBox(height: 32.0),

              TextField(
                controller: _Name,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 12.0),

              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 12.0),


              TextField(
                controller: _phoneNumber,
                decoration: InputDecoration(
                  labelText: 'Phone No.',
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),

              SizedBox(height: 12.0),

              TextField(
                controller: _CpasswordController,
                decoration: InputDecoration(
                  labelText: ' Conform Password',
                ),
                obscureText: true,
              ),

              SizedBox(height: 44.0),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 112, 91, 222),
                  ),
                  child: const Text(
                    "   SignUp   ",
                    style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
