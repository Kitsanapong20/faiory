import 'package:faiory/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  //Explicit
  double MyZise = 200;
  Widget mySizeBox() {
    return SizedBox(
      width: 8.0,
    );
  }

  Widget singupbutton() {
    return RaisedButton(
      child: Text('Sing up '),
      onPressed: () {
        print('you click  Sing up ');

        var registerRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(registerRoute);
      },
    );
  }

  Widget singInButton() {
    return RaisedButton(
      color: Colors.pink,
      child: Text(
        ' Sing in',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget mybutton() {
    return Container(
      width: 220.0,
      child: Row(
        children: <Widget>[
          Expanded(child: singInButton()),
          mySizeBox(),
          Expanded(child: singupbutton()),
        ],
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
    return Text('Hello World',
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
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purple, Colors.white])),
        padding: EdgeInsets.only(top: 60.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showlogo(),
            showText(),
            mailText(),
            passwordText(),
            mybutton()
          ],
        ),
      ),
    );
  }
}
