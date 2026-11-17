import 'package:flutter/material.dart';
import 'package:ma_premier_app/home_page.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(Icons.lock_outline, size: 80, color: Colors.lightGreen),
            const Text(
              'Bienvenue',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Connectez-vous pour continuer',
              style: TextStyle(color: Colors.grey),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'exemple@mail.com',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                hintText: 'Votre mot de passe',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            const Text('Mot de passe oublié',
            style: TextStyle(color: Color.fromARGB(255, 8, 161, 85)),
            textAlign:TextAlign.right,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Bienvenue !')));
                    Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) => const HomePage()),
);
              },
              child: const Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}