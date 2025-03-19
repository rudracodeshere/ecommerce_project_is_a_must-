import 'package:e_commerce_project/screens/enter_password.dart';
import 'package:e_commerce_project/screens/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 110, horizontal: 16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _text(),
                SizedBox(height: 20),
                _emailBox(context),
                SizedBox(height: 20),
                _button(context),
                SizedBox(height: 20),
                _noAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _text() {
    return Text(
      'Sign In',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _emailBox(BuildContext context) {
    return TextField(
      //autofocus: true,
      decoration: InputDecoration(
        hintText: 'Enter Email',
        hintStyle: TextStyle(
          color: Colors.grey[300],
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        filled: true,
        fillColor: Theme.of(
          context,
        ).colorScheme.secondaryContainer.withOpacity(0.5),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => EnterPasswordPage()),
          );
        },
        child: Text('Continue'),
      ),
    );
  }

  Widget _noAccount(BuildContext context) {
    return RichText(
      textScaleFactor: 1.1,
      text: TextSpan(
        children: [
          TextSpan(text: "Don't have an account? "),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
            text: 'Create One!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
