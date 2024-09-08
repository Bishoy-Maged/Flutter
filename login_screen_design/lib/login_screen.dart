import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true; // Controls whether the password is obscured

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1877F2),
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          "Facebook",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white70,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  //onSubmitted: (value) {print(value);},
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                ),
                const SizedBox(height: 25),
                TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.remove_red_eye_rounded
                            : Icons.visibility_off_rounded, // Toggle icon
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText; // Toggle password visibility
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  width: double.infinity,
                  height: 40,
                  color: const Color(0xFF1877F2),
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register Now'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}