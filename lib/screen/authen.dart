import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  //Explicit
  double MyZise = 200;
  Widget singInButton() {
    return RaisedButton(
      child: Text(' Sing in'), onPressed: (){},
    );
  }

  Widget mybutton() {
    return Container(
      width: 220.0,
      child: Row(
        children: <Widget>[singInButton(), singInButton()],
      ),
    );
  }

  Widget passwordText() {
    return Container(
        width: 220.0,
        child: TextFormField(
            decoration: InputDecoration(
          labelText: 'Password :',
          hintText: 'Upsw =6',
        )));
  }

  Widget mailText() {
    return Container(
        width: 220.0,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: 'E - mail', hintText: 'you@e-mail.com'),
        ));
  }

  //Me mk[;kthod
  Widget showlogo() {
    return Container(
      width: MyZise,
      height: MyZise,
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget showText() {
    return Text('Wwow look it That!!!',
        style: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.pink[800],
            fontFamily: 'THSarabunBold'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showlogo(),
            showText(),
            passwordText(),
            mailText()
          ],
        ),
      ),
    );
  }
}
