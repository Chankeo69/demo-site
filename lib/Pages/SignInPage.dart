import 'package:flutter/material.dart';
import 'package:sneaker_shop/Pages/HomePage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // String defaultUsername = 'Somsak';
  // String defaultPassword = '766725';
  bool _showPassword = false;
  bool _usernameError = false;
  bool _passwordError = false;

//ປຸ່ມກົດໂຊລະຫັດ
  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

//ປຸ່ມກົດລ໋ອກອິນ
  void _handleLogin() {
    setState(() {
      _usernameError = _usernameController.text != "Keo";
      _passwordError = _passwordController.text != "7432";
    });

    if (!_usernameError && !_passwordError) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Logo/sk_logo.png', width: 100, height: 100),
              const SizedBox(height: 20),
              const Text(
                'Welcome back',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(fontSize: 18),
                controller: _usernameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Username or Email',
                  border: const OutlineInputBorder(),
                  errorText:
                      _usernameError ? 'Username or password incorrect' : null,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(fontSize: 18),
                controller: _passwordController,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                  errorText:
                      _passwordError ? 'Username or password incorrect' : null,
                  suffixIcon: IconButton(
                    icon: Icon(_showPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0)),
                  minimumSize: const Size(350, 60),
                ),
                onPressed: _handleLogin,
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'or',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // ເຊື່ອຕໍ່ກັບ google
                  },
                  icon: const Icon(
                    Icons.g_mobiledata,
                    size: 50,
                  ),
                  label: const Text(
                    'Sign in with Google',
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "signupPage");
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
