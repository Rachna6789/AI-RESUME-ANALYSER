import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loading = false;

  // Email validation
  String? emailValidator(String v) {
    if (v.isEmpty) return "Email required";
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(v)) {
      return "Enter valid email";
    }
    return null;
  }

  // Password validation
  String? passValidator(String v) {
    if (v.isEmpty) return "Password required";
    if (v.length < 6) return "Password must be 6+ characters";
    return null;
  }

  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;

    setState(() => loading = true);

    String? error =
    await AuthService.login(email.text.trim(), password.text.trim());

    if (!mounted) return; // FIX for async context warning
    setState(() => loading = false);

    if (error != null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error)));
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.psychology, size: 80, color: Colors.deepPurple),
                  const SizedBox(height: 10),

                  const Text(
                    "CareerAI",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),

                  const SizedBox(height: 30),

                  TextFormField(
                    controller: email,
                    validator: (v) => emailValidator(v!),
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    controller: password,
                    validator: (v) => passValidator(v!),
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: loading ? null : login,
                      child: loading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text("Login", style: TextStyle(fontSize: 18)),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SignupScreen()),
                      );
                    },
                    child: const Text("Create Account"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
