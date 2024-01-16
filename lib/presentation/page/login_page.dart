import 'package:bucket_list_app/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bucket List',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 80),
            Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
              ),
            ),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: MaterialTheme.lightScheme().primary,
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: MaterialTheme.lightScheme().onPrimary,
                ),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: MaterialTheme.lightScheme().onPrimary,
                side: BorderSide(
                  color: MaterialTheme.lightScheme().primary,
                  width: 0.5,
                ),
              ),
              child: Text(
                'CREATE ACCOUNT',
                style: TextStyle(
                  color: MaterialTheme.lightScheme().primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
