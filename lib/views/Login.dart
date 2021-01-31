import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanctum_auth/providers/AuthProvider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:sanctum_auth/providers/BaseProvider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  pageTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
      child: Text(
        'Login',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            pageTitle(),
            LoginForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: Text('Register'),
                )
              ],
            ),
          ],
        ),
      ))),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    emailField() {
      return Container(
          margin: EdgeInsets.only(bottom: 10),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) => _email = value,
            validator: (input) {
              if (input.isEmpty) {
                return 'Email is required.';
              }
              if (!EmailValidator.validate(input)) {
                return 'Enter valid email address.';
              }
              return null;
            },
            decoration: InputDecoration(
                filled: false,
                hintText: 'Email',
                errorText:
                    (auth.state == Status.ERROR) && auth.hasError('email')
                        ? auth.error('email')[0]
                        : null),
          ));
    }

    passwordField() {
      return Container(
          margin: EdgeInsets.only(bottom: 10),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Password',
                errorText:
                    (auth.state == Status.ERROR) && auth.hasError('password')
                        ? auth.error('password')[0]
                        : null),
            onSaved: (value) => _password = value,
            validator: (input) {
              if (input.isEmpty) {
                return 'Password is required';
              }
              if (input.length < 4) {
                return 'Password must be at least 4 character';
              }
              return null;
            },
          ));
    }

    loginButton() {
      return Center(
        child: ElevatedButton(
          onPressed: (auth.state == Status.LOADING)
              ? null
              : () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    bool isLoggedIn = await auth.login(_email, _password);
                    if (isLoggedIn) {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      _buildShowErrorDialog(context, auth.message);
                    }
                    // Scaffold.of(context)
                    //     .showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
                },
          child: (auth.state == Status.LOADING)
              ? CircularProgressIndicator()
              : Text('Login'),
        ),
      );
    }

    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (auth.state == Status.ERROR && auth.message != null)
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    '${auth.message}',
                    style: TextStyle(color: Colors.grey[50]),
                  )),
            emailField(),
            passwordField(),
            loginButton()
          ],
        ),
      ),
    );
  }

  Future _buildShowErrorDialog(BuildContext context, _message) {
    return showDialog(
        builder: (context) {
          return AlertDialog(
            title: Text('Error Message'),
            content: Text(_message),
            actions: [
              FlatButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
        context: context);
  }
}
