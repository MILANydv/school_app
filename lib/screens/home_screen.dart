import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 2,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ElevatedButton(
                onPressed: () {
                  if (index == 0) {
                    Navigator.pushNamed(context, '/');
                  } else {
                    Navigator.pushNamed(context, '/signup');
                  }
                },
                child: Text(
                  index == 0 ? 'View Student' : 'Search Student',
                  style: const TextStyle(fontSize: 20),
                ));
          },
        ),
      ),
    );
  }
}
