import 'package:flutter/material.dart';
import 'package:modern_login_ui/components/my_button.dart';
import 'package:modern_login_ui/components/my_text_field.dart';
import 'package:modern_login_ui/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 48),
        
                // logo
                const Icon(
                  Icons.lock,
                  size: 104,
                ),
        
                const SizedBox(height: 48),
        
                // welcome back, you've been missed!
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
        
                const SizedBox(height: 24),
        
                // username textField
                MyTextField(
                  controller: usernameController,
                  labelText: 'Username',
                  hintText: 'Enter your Username',
                  obscureText: false,
                ),
        
                const SizedBox(height: 10),
        
                // password textField
                MyTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                  obscureText: true,
                ),
        
                const SizedBox(height: 10),
        
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 24),
        
                // sign in button
                MyButton(
                  onTap: signUserIn,
                ),
        
                const SizedBox(height: 48),
        
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 48),
        
                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // google button
                    SquareTile(imagePath: 'lib/images/google.png'),
        
                    SizedBox(width: 25),
        
                    // apple button
                    SquareTile(imagePath: 'lib/images/apple.png')
                  ],
                ),
        
                const SizedBox(height: 48),
        
                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
