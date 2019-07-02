import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {


   final formkey = GlobalKey<FormState>();
String nameString,emailString,passwordString;
  
  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('Uploadddddd');
        if (formkey.currentState.validate()) {
          formkey.currentState.save();
          print('name=$nameString');
          print('E-mail=$emailString');
          print('Password=$passwordString');
        }
      },
    );
  }

  Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(color: Colors.purple[300]),
          helperText: 'Type Display in name',
          icon: Icon(
            Icons.tag_faces,
            size: 36.0,
            color: Colors.purple[200],
          )
          ),validator:(String value){
            if (value.isEmpty) {return 'Please fill name in bank';
              
            }
          },onSaved: (String value){
            nameString = value;
          },
    );
  }

  Widget e_mailText1() {
    return TextFormField(keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'E-mail',
          labelStyle: TextStyle(color: Colors.blue[200]),
          helperText: 'Type Display in E-mail',
          icon: Icon(
            Icons.alternate_email,
            size: 36.0,
            color: Colors.blue[300],
          )
          ),validator:(String value){
            if (!((value.contains('@'))&&(value.contains('.')))) {
              return 'Please type E-mail format';
            }
          },onSaved: (String value){
            emailString = value;
          },
    );
  }

  Widget password_Text2() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.red[300]),
          helperText: 'Type Display in Password',
          icon: Icon(
            Icons.lock,
            size: 36.0,
            color: Colors.red[300],
          )
          ),validator:(String value){
            if (value.length<=5) {
              return 'Please type much more 6 charactor';
            }
          },onSaved: (String value){
            passwordString= value;
          },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.purple[200],
          title: Text('Register'),
          actions: <Widget>[uploadButton()],
        ),
        body: Form(key: formkey,child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/tristan-billet-72EYDDwn8dE-unsplash (1).jpg'))
          ),
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 60.0),
          child: Container(decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.7)),
            width: 300.0,
            height: 300.0,
            child: Column(
              children: <Widget>[
                nameText(),
                e_mailText1(),
                password_Text2() ,

              ],
            ),
          ),),
        ));
  }
}
