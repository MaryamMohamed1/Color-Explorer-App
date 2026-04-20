import 'package:flutter/material.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> devInfo = [
      'Developer Name: Maryam Mohamed',
      'Contact Email: maryam.mohamed@example.com',
    ];
return Scaffold(
appBar: AppBar(title: const Text('Settings')),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
const Text(
'Welcome to Settings:',
  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),
   const SizedBox(height: 20),
  Expanded(
  child: ListView.builder(
  itemCount: devInfo.length,
  itemBuilder: (context, index) {
      return ListTile(
     leading: const Icon(Icons.info),
     title: Text(devInfo[index]),
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text('Logout', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}