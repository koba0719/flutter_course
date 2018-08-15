import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String email;
  String password;
  bool _acceptTerm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'E-Mail'),
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                setState(() {
                  this.email = value;
                  print(this.email);
                });
              },
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    this.password = value;
                    print(this.password);
                  });
                }),
            SwitchListTile(
              value: _acceptTerm,
              onChanged: (bool value) {
                setState(() {
                  this._acceptTerm = value;
                });
              },
              title: Text('Accept Terms'),

            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              textColor: Colors.white,
              child: Text('LOGIN'),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/products'),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
