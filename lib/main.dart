import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: Colors.blue.shade300,
      ),
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.lightBlue,
                backgroundImage: AssetImage('assets/christmas.png')),
            const Text('Christmas Deer',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            const Text(
              'Made with Flutter',
              style: TextStyle(
                  color: Colors.tealAccent,
                  fontSize: 30,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
              width: 200,
              child: Divider(color: Colors.lightBlue.shade300),
            ),
            Card(
                color: Colors.white,
                margin: const EdgeInsets.all(20),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.lightBlue.shade500,
                    ),
                    title: Text(
                      '+ 19857120576',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue.shade500,
                      ),
                    ))),
            Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.lightBlue.shade500,
                    ),
                    title: Text(
                      'example@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue.shade500,
                      ),
                    )))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {print('click')},
          backgroundColor: Colors.blue.shade300,
          child: const Text('click',
              style: TextStyle(
                color: Colors.white,
              ))),
    );
  }
}
