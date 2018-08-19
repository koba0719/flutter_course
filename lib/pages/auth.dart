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
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
              fit: BoxFit.cover,
              image: AssetImage('assets/background.jpg'),
            ),
          ),
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String value) {
                      setState(() {
                        this.email = value;
                        print(this.email);
                      });
                    },
                  ),
                  SizedBox(
                    height: 10.9,
                  ),
                  TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: Colors.white),
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
                        print("_acceptTerm : " + this._acceptTerm.toString());
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
          )),
    );
  }
}
