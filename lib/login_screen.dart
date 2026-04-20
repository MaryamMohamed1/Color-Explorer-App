import 'package:flutter/material.dart';
import 'main_shell.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
final TextEditingController _nameController=TextEditingController();
final TextEditingController _usernameController=TextEditingController();
final TextEditingController _passwordController=TextEditingController();
bool _ispasswordVisible = false;
void _login(){
  if(_nameController.text.isEmpty||_usernameController.text.isEmpty||_passwordController.text.isEmpty){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('please fill all fields'))
    );
    return;
  }
  Navigator.pushReplacement(
    context, 
    MaterialPageRoute(builder: (context) => const MainShell()),
    );
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: !_ispasswordVisible, 
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _ispasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _ispasswordVisible = !_ispasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
           ),
          ],
        ),
      ),
    );
  }
}