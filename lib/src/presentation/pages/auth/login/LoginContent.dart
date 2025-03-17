import 'package:flutter/material.dart';
import 'package:indrive_clone/src/presentation/widgets/DefaultButton.dart';
import 'package:indrive_clone/src/presentation/widgets/DefaultTexField.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 12, 38, 145),
                Color.fromARGB(255, 34, 156, 249),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //HORIZONTAL
            mainAxisAlignment: MainAxisAlignment.center, //VERTICAL
            children: [
              _textLoginRotated(),
              SizedBox(height: 70),
              _textRegisterRotated(),
              SizedBox(height: 70),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 60, bottom: 80),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 14, 29, 166),
                Color.fromARGB(255, 30, 112, 227),
              ],
            ),
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
                _textWelcome('Welcome'),
                _textWelcome('back...'),
                _imageCar(),
                _textLogin(),
                DefaultTextField(text: 'Email', icon: Icons.email_outlined),
                DefaultTextField(
                  text: 'Password',
                  icon: Icons.lock_outline,
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                ),
                Spacer(),
                DefaultButton(
                  text: 'LOGIN',
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                _separatorOr(),
                SizedBox(height: 20),
                _textDontHaveAccount(),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes una cuenta?',
          style: TextStyle(color: Colors.grey[100], fontSize: 16),
        ),
        SizedBox(width: 10),
        Text(
          'Regístrate',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _textLogin() {
    return Text(
      'Log in',
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _separatorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 25,
          color: Colors.grey[100],
          margin: EdgeInsets.only(right: 10),
        ),
        Text('O', style: TextStyle(color: Colors.white, fontSize: 16)),
        Container(
          height: 1,
          width: 25,
          color: Colors.grey[100],
          margin: EdgeInsets.only(left: 10),
        ),
      ],
    );
  }

  Widget _imageCar() {
    return Container(
      alignment: Alignment.centerRight,
      child: Image.asset('assets/img/car.png', width: 200, height: 200),
    );
  }

  Widget _textWelcome(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _textRegisterRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Register',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }

  Widget _textLoginRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
