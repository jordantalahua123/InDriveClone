import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 21, 152, 213),
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //HORIZONTAL
            mainAxisAlignment: MainAxisAlignment.center, //VERTICAL
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 70),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Registro',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 60, bottom: 80),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 24, 181, 254),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'back...',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/img/car.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Email', style: TextStyle(color: Colors.white)),
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    prefixIcon: Icon(Icons.key, color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(color: Colors.cyan),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
