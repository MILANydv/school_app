import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
                decoration: const InputDecoration(
              labelText: 'First Name',
              hintText: 'Enter your first name',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                decoration: const InputDecoration(
              labelText: 'Last Name',
              hintText: 'Enter your last name',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                decoration: const InputDecoration(
              labelText: 'UserName',
              hintText: 'Enter your username',
              border: OutlineInputBorder(),
            )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                  border: OutlineInputBorder(),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('Sign Up'),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Sign In'))
          ],
        ),
      ),
    );
  }
}
