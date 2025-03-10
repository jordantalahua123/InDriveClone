import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome', style: TextStyle(fontSize: 25)),
              Text('back...', style: TextStyle(fontSize: 25)),
              Container(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/img/car.png',
                  width: 200,
                  height: 200,
                ),
              ),
              Text('Log in', style: TextStyle(fontSize: 20)),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.key),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
