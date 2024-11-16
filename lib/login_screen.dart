import 'package:flutter/material.dart';
import 'package:login_screen/sign_up_screen.dart';
import 'features_screen.dart'; // Import the Features screen
import 'employee_login_screen.dart'; // Import the Employee Login screen

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade400,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.facebook, color: Colors.blue),
                      label: Text('Facebook'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(150, 50),
                        side: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.g_mobiledata, color: Colors.red),
                      label: Text('Google'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(150, 50),
                        side: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Or', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email/Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => FeaturesScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  ),
                  child: Text('Log In', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      child: Text('Sign Up'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(color: Colors.grey, thickness: 1),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployeeLoginScreen()),
                    );
                  },
                  child: Text(
                    'Employee Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
